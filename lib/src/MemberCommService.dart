import 'package:grpc/grpc.dart';
import 'package:mysql1/mysql1.dart';
import 'package:packliste/src/Websocket.dart';
import 'package:packliste/src/generated/common.pb.dart';
import 'package:grpc/src/server/call.dart';
import 'package:packliste/src/generated/communication.pbgrpc.dart';
import 'package:packliste/src/generated/websocket.pbgrpc.dart';

class MemberCommService extends MemberCommServiceBase {
  final MySqlConnection conn;
  final WebsocketService wSocket;

  MemberCommService(this.conn, this.wSocket);

  @override
  Future<Member> createMember(ServiceCall call, Member request) async {
    if (request.hasEveryone() && request.everyone) {
      call.sendTrailers(
          status: StatusCode.invalidArgument,
          message: 'Cannot create Everyone-member');
      return null;
    }
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
            'INSERT INTO Member (name, packliste, everyone) VALUES (?,?,?)',
            [request.name, request.pId, null]))
        .insertId;
    var member = await conn.query(
        'SELECT id,name,packliste,everyone FROM Member WHERE id=?', [resultId]);
    if (member.isEmpty) {
      call.sendTrailers(
          status: StatusCode.aborted, message: 'Could not create Member');
      return null;
    }
    wSocket.sendPacket(Packet(type: PacketType.MEMBER_CREATE, id: resultId),
        packlisteId: member.first[2]);
    return Member(
      id: member.first[0],
      name: member.first[1],
      pId: member.first[2],
      everyone: member.first[3] == 1,
    );
  }

  @override
  Future<Empty> deleteMember(ServiceCall call, Id request) async {
    if (!request.hasId()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Id missing');
      return null;
    }
    var m = await conn.query(
        'SELECT id,name,packliste,everyone FROM Member where id=?',
        [request.id]);
    if (m.isEmpty) {
      call.sendTrailers(
          status: StatusCode.notFound,
          message: 'Member with that Id not found');
      return null;
    }
    if (m.first[3] == 1) {
      call.sendTrailers(
          status: StatusCode.invalidArgument,
          message: 'Cannot delete Everyone-member');
      return null;
    }
    await conn.query('DELETE FROM Member where id=?', [request.id]);
    wSocket.sendPacket(Packet(type: PacketType.MEMBER_DELETE, id: request.id),
        packlisteId: m.first[2]);
    return Empty();
  }

  @override
  Future<Empty> editMember(ServiceCall call, Member request) async {
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
    var m = await conn.query(
        'SELECT id, name, packliste, everyone FROM Member where id=?',
        [request.id]);
    if (m.isEmpty) {
      call.sendTrailers(
          status: StatusCode.notFound,
          message: 'A member with that Id was not found');
      return null;
    }
    if (m.first[3] == 1) {
      call.sendTrailers(
          status: StatusCode.permissionDenied,
          message: 'Cannot modify Everyone-member');
      return null;
    }
    await conn.query(
        'UPDATE Member SET name=? where id=?', [request.name, request.id]);
    wSocket.sendPacket(Packet(type: PacketType.MEMBER_EDIT, id: request.id),
        packlisteId: m.first[2]);

    return Empty();
  }

  @override
  Future<Member> getMember(ServiceCall call, Id request) async {
    if (!request.hasId()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Id missing');
      return null;
    }
    var results = await conn.query(
        'SELECT id,name,packliste,everyone FROM Member WHERE id=?',
        [request.id]);
    if (results.isEmpty) {
      call.sendTrailers(
          status: StatusCode.notFound,
          message: 'Member with that Id does not exist');
      return null;
    }
    final x = results.first;
    var result = Member(id: x[0], name: x[1], pId: x[2], everyone: x[3]);
    return result;
  }

//returns members for Packliste
  @override
  Stream<Member> getMembers(ServiceCall call, Id request) async* {
    if (!request.hasId()) {
      call.sendTrailers(
          status: StatusCode.invalidArgument, message: 'Id missing');
      return;
    }
    var results = await conn.query(
        'SELECT id,name,packliste,everyone FROM Member where packliste=?',
        [request.id]);
    for (var r in results) {
      var m = Member()
        ..id = r[0]
        ..name = r[1]
        ..pId = r[2]
        ..everyone = r[3] == 1;
      if (call.isCanceled) return;
      yield m;
    }
  }
}
