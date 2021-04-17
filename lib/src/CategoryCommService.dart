import 'package:grpc/grpc.dart';
import 'package:packliste/src/Websocket.dart';
import 'package:packliste/src/dbconn.dart';
import 'package:packliste/src/generated/common.pb.dart';
import 'package:grpc/src/server/call.dart';
import 'package:packliste/src/generated/communication.pbgrpc.dart';
import 'package:packliste/src/generated/websocket.pbgrpc.dart';

class CategoryCommService extends CategoryCommServiceBase {
  final DbConn conn;
  final WebsocketService wSocket;

  CategoryCommService(this.conn, this.wSocket);

  @override
  Future<Category> createCategory(ServiceCall call, Category request) async {
    if (!request.hasName()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Name missing');
      return null;
    }
    if (!request.hasPId()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'PacklistenId missing');
      return null;
    }
    var resultId = (await conn.query(
            'INSERT INTO Category (name,packliste) VALUES (?,?)',
            [request.name, request.pId]))
        .insertId;
    var category = await conn
        .query('SELECT id,name,packliste FROM Category WHERE id=?', [resultId]);
    if (category.isEmpty) {
      call.sendTrailers(
          status: StatusCode.aborted, message: 'Could not create Category');
      return null;
    }
    wSocket.sendPacket(Packet(type: PacketType.CATEGORY_CREATE, id: resultId),
        packlisteId: category.first[2]);
    return Category(
      id: category.first[0],
      name: category.first[1],
      pId: category.first[2],
    );
  }

  @override
  Future<Empty> deleteCategory(ServiceCall call, Id request) async {
    if (!request.hasId()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Id missing');
      return null;
    }
    var c = await conn.query(
        'SELECT id,name,packliste FROM Category where id=?', [request.id]);
    if (c.isEmpty) {
      call.sendTrailers(
          status: StatusCode.notFound,
          message: 'Category with that Id not found');
      return null;
    }
    await conn.query('DELETE FROM Category WHERE id=?', [request.id]);
    wSocket.sendPacket(Packet(type: PacketType.CATEGORY_DELETE, id: request.id),
        packlisteId: c.first[2]);
    return Empty();
  }

  @override
  Future<Empty> editCategory(ServiceCall call, Category request) async {
    if (!request.hasId()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Id missing');
      return null;
    }
    if (!request.hasName()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Name missing');
      return null;
    }
    var c = await conn.query(
        'SELECT id, name, packliste FROM Category where id=?', [request.id]);
    if (c.isEmpty) {
      call.sendTrailers(
          status: StatusCode.invalidArgument,
          message: 'A category with that Id was not found');
      return null;
    }
    await conn.query(
        'UPDATE Category SET name=? where id=?', [request.name, request.id]);
    wSocket.sendPacket(Packet(type: PacketType.CATEGORY_EDIT, id: request.id),
        packlisteId: c.first[2]);
    return Empty();
  }

  @override
  Stream<Category> getCategories(ServiceCall call, Id request) async* {
    if (!request.hasId()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Id missing');
      return;
    }
    var results = await conn.query(
        'SELECT id,name,packliste FROM Category where packliste=?',
        [request.id]);
    for (var r in results) {
      var c = Category()
        ..id = r[0]
        ..name = r[1]
        ..pId = r[2];
      if (call.isCanceled) return;
      yield c;
    }
  }

  @override
  Future<Category> getCategory(ServiceCall call, Id request) async {
    if (!request.hasId()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Id missing');
      return null;
    }
    var results = await conn.query(
        'SELECT id, name, packliste FROM Category WHERE id=?', [request.id]);
    if (results.isEmpty) {
      call.sendTrailers(
          status: StatusCode.notFound,
          message: 'Category with that Id does not exist');
      return null;
    }
    final c = results.first;
    var result = Category(id: c[0], name: c[1], pId: c[2]);
    return result;
  }
}
