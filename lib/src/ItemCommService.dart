import 'package:grpc/grpc.dart';
import 'package:packliste/src/Websocket.dart';
import 'package:packliste/src/dbconn.dart';
import 'package:packliste/src/generated/common.pb.dart';
import 'package:grpc/src/server/call.dart';
import 'package:packliste/src/generated/communication.pbgrpc.dart';
import 'package:packliste/src/generated/websocket.pbgrpc.dart';

class ItemCommService extends ItemCommServiceBase {
  final DbConn conn;
  final WebsocketService wSocket;

  ItemCommService(this.conn, this.wSocket);

  @override
  Future<Item> createItem(ServiceCall call, Item request) async {
    if (!request.hasName()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Name missing');
      return null;
    }
    if (!request.hasCategory()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'CategoryId missing');
      return null;
    }
    if (!request.hasAmount()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Amount missing');
      return null;
    }
    var resultId = (await conn.query(
            'INSERT INTO Item (name,category,amount) VALUES (?,?,?)',
            [request.name, request.category, request.amount]))
        .insertId;
    var item = await conn.query(
        'SELECT id, name, category, amount FROM Item WHERE id=?', [resultId]);
    if (item.isEmpty) {
      call.sendTrailers(
          status: StatusCode.aborted, message: 'Could not create Item');
      return null;
    }
    var i = item.first;
    wSocket.sendPacket(Packet(type: PacketType.ITEM_CREATE),
        packlisteId: await getPacklisteId(categoryId: i[2]));
    return Item()
      ..id = i[0]
      ..name = i[1]
      ..category = i[2]
      ..amount = i[3];
  }

  @override
  Future<Empty> deleteItem(ServiceCall call, Id request) async {
    if (!request.hasId()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Id missing');
      return null;
    }
    var i = await conn.query('SELECT id FROM Item WHERE id=?', [request.id]);
    if (i.isEmpty) {
      call.sendTrailers(
          status: StatusCode.notFound, message: 'Item with that Id not found');
      return null;
    }
    var pId = await getPacklisteId(itemId: request.id);
    await conn.query('DELETE FROM Item where id=?', [request.id]);
    wSocket.sendPacket(Packet(type: PacketType.ITEM_DELETE, id: request.id),
        packlisteId: pId);
    return Empty();
  }

  @override
  Future<Empty> editItem(ServiceCall call, Item request) async {
    if (!request.hasId()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Id missing');
      return null;
    }
    if (!request.hasName() && !request.hasCategory() && !request.hasAmount()) {
      return Empty();
    }
    var i = await conn.query(
        'SELECT id,name,category,amount FROM Item where id=?', [request.id]);
    if (i.isEmpty) {
      call.sendTrailers(
          status: StatusCode.invalidArgument,
          message: 'An item with that Id was not found');
      return null;
    }
    if (!request.hasName()) {
      request.name = i.first[1];
    }
    if (!request.hasCategory()) {
      request.category = i.first[2];
    }
    if (!request.hasAmount()) {
      request.amount = i.first[3];
    }
    await conn.query('UPDATE Item SET name=?, category=?, amount=? WHERE id=?',
        [request.name, request.category, request.amount, request.id]);
    wSocket.sendPacket(Packet(type: PacketType.ITEM_EDIT, id: request.id),
        packlisteId: await getPacklisteId(categoryId: request.category));
    return Empty();
  }

  @override
  Future<Item> getItem(ServiceCall call, Id request) async {
    if (!request.hasId()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Id missing');
      return null;
    }
    var results = await conn.query(
        'SELECT id,name,category,amount FROM Item where id=?', [request.id]);
    if (results.isEmpty) {
      call.sendTrailers(
          status: StatusCode.notFound,
          message: 'Item with that Id does not exist');
      return null;
    }
    final i = results.first;
    var item = Item(id: i[0], name: i[1], category: i[2], amount: i[3]);
    return item;
  }

  @override
  Stream<Item> getItems(ServiceCall call, Id request) async* {
    if (!request.hasId()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Id missing');
      return;
    }
    var results = await conn.query(
        'SELECT id,name,category,amount FROM Item where category=?',
        [request.id]);
    for (var r in results) {
      var i = Item()
        ..id = r[0]
        ..name = r[1]
        ..category = r[2]
        ..amount = r[3];
      if (call.isCanceled) return;
      yield i;
    }
  }

  Future<int> getPacklisteId({int itemId, int categoryId}) async {
    if (categoryId != null) {
      var id = await conn
          .query('SELECT packliste from Category where id=?', [categoryId]);
      if (id.isEmpty) throw Exception('Not found');
      return id.first[0];
    }
    if (itemId != null) {
      var id = await conn.query(
          'SELECT c.packliste FROM Category c INNER JOIN Item i ON c.id = i.category WHERE i.id=?',
          [itemId]);
      if (id.isEmpty) throw Exception('Not found');
      return id.first[0];
    }
    throw Exception('No argument specified');
  }

  @override
  Future<Empty> packItem(ServiceCall call, Item_Member request) async {
    if (!request.hasItem()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'ItemId missing');
      return null;
    }
    if (!request.hasMember()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'MemberId missing');
      return null;
    }
    if (!request.hasAmount()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Amount missing');
      return null;
    }
    var results = await conn.query(
        'SELECT item, member, amount FROM Item_Member where item=? AND member=?',
        [request.item, request.member]);
    if (results.isEmpty) {
      call.sendTrailers(
          status: StatusCode.notFound,
          message: 'This member should not pack this item');
      return null;
    }
    await conn.query(
        'UPDATE Item_Member SET amount=? WHERE item=? AND member=?',
        [request.amount, request.item, request.member]);
    wSocket.sendPacket(
      Packet(type: PacketType.ITEM_PACK, id: request.item, mId: request.member),
      packlisteId: await getPacklisteId(itemId: request.item),
    );
    return Empty();
  }

  @override
  Future<Empty> itemMemberEdit(
      ServiceCall call, Item_Member_Create request) async {
    if (!request.hasItem()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'ItemId missing');
      return null;
    }
    if (!request.hasMember()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'MemberId missing');
      return null;
    }
    if (!request.hasPack()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Pack missing');
      return null;
    }
    var results = await conn.query(
        'SELECT item, member, amount FROM Item_Member where item=? AND member=?',
        [request.item, request.member]);
    if (request.pack) {
      //Should pack the item
      if (results.isEmpty) {
        await conn.query(
            'INSERT INTO Item_Member (item, member, amount) values (?,?,?)',
            [request.item, request.member, 0]);
        wSocket.sendPacket(
            Packet(
                type: PacketType.ITEM_MEMBER_EDIT,
                id: request.item,
                mId: request.member),
            packlisteId: await getPacklisteId(itemId: request.item));
      }
      return Empty();
    }
    //Should NOT pack the item
    if (results.isEmpty) return Empty();
    await conn.query('DELETE FROM Item_Member WHERE item=? AND Member=?',
        [request.item, request.member]);
    wSocket.sendPacket(
        Packet(
            type: PacketType.ITEM_MEMBER_EDIT,
            id: request.item,
            mId: request.member),
        packlisteId: await getPacklisteId(itemId: request.item));
    return Empty();
  }

  @override
  Stream<Member_Category_Response> getItemsForMember(
      ServiceCall call, Id request) async* {
    if (!request.hasId()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Id missing');
      return;
    }
    var results = await conn.query(
        'SELECT im.item, im.member, im.amount, i.name, i.amount, i.category FROM Item_Member im JOIN Item i ON i.id=im.item WHERE member=?',
        [request.id]);
    for (var r in results) {
      var im = Item_Member()
        ..item = r[0]
        ..member = r[1]
        ..amount = r[2];
      var i = Item()
        ..id = r[0]
        ..name = r[3]
        ..amount = r[4]
        ..category = r[5];
      if (call.isCanceled) return;
      yield Member_Category_Response(item: i, itemMember: im);
    }
  }

  @override
  Stream<Member_Category_Response> getItemsForMemberAndCategory(
      ServiceCall call, Member_Category request) async* {
    if (!request.hasCategory()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Category missing');
      return;
    }
    if (!request.hasMember()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Member missing');
      return;
    }
    var results = await conn.query(
        'SELECT im.item, im.member, im.amount, i.name, i.amount, i.category FROM Item_Member im JOIN Item i ON im.item=i.id where im.member=? AND i.category=? ',
        [request.member, request.category]);
    print(results);
    for (var r in results) {
      var im = Item_Member()
        ..item = r[0]
        ..member = r[1]
        ..amount = r[2];
      var i = Item()
        ..id = r[0]
        ..name = r[3]
        ..amount = r[4]
        ..category = r[5];
      if (call.isCanceled) return;
      yield Member_Category_Response(item: i, itemMember: im);
    }
  }
}
