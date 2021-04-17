import 'package:packliste/src/Websocket.dart';
import 'package:packliste/src/dbconn.dart';
import 'package:packliste/src/generated/common.pb.dart';
import 'package:packliste/src/generated/communication.pbgrpc.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:packliste/src/generated/websocket.pb.dart';

class PacklisteCommService extends PacklisteCommServiceBase {
  final DbConn conn;
  final WebsocketService wSocket;

  PacklisteCommService(this.conn, this.wSocket);

  @override
  Future<Packliste> createPackliste(
      grpc.ServiceCall call, Packliste request) async {
    if (!request.hasName()) {
      call.sendTrailers(
          status: grpc.StatusCode.invalidArgument, message: 'Name missing');
      return null;
    }
    var resultId = (await conn
            .query('INSERT INTO Packliste (name) VALUES (?)', [request.name]))
        .insertId;
    await conn.query(
        'INSERT INTO Member (name, packliste, everyone) VALUES (?,?,?)',
        ['Everyone', resultId, 1]);
    var results = await conn
        .query('select id,name from Packliste where id=?', [resultId]);
    wSocket.sendPacket(Packet(type: PacketType.PACKLISTE_CREATE, id: resultId));
    return Packliste(id: results.first[0], name: results.first[1]);
  }

  @override
  Future<Empty> deletePackliste(grpc.ServiceCall call, Id request) async {
    if (!request.hasId()) {
      call.sendTrailers(
          status: grpc.StatusCode.invalidArgument, message: 'Id missing');
      return null;
    }
    var results =
        await conn.query('DELETE FROM Packliste where id=?', [request.id]);
    if (results.affectedRows == 0) {
      call.sendTrailers(
          status: grpc.StatusCode.notFound,
          message: 'Packliste with that Id not found');
      return Empty();
    }
    wSocket
        .sendPacket(Packet(type: PacketType.PACKLISTE_DELETE, id: request.id));
    wSocket.deleteStream(request.id);
    return Empty();
  }

  @override
  Future<Empty> editPackliste(grpc.ServiceCall call, Packliste request) async {
    if (!request.hasId()) {
      call.sendTrailers(
          status: grpc.StatusCode.invalidArgument, message: 'Id missing');
      return null;
    }
    if (!request.hasName()) {
      call.sendTrailers(
          status: grpc.StatusCode.invalidArgument, message: 'Name missing');
      return null;
    }
    var results = await conn.query(
        'UPDATE Packliste SET name =? where id=?', [request.name, request.id]);
    if (results.affectedRows == 0) {
      call.sendTrailers(
          status: grpc.StatusCode.notFound,
          message:
              'Packliste already has that name, or no packliste with that Id found');
      return Empty();
    }
    wSocket.sendPacket(Packet(type: PacketType.PACKLISTE_EDIT, id: request.id));
    return Empty();
  }

  @override
  Future<Packliste> getPackliste(grpc.ServiceCall call, Id request) async {
    if (!request.hasId()) {
      call.sendTrailers(
          status: grpc.StatusCode.invalidArgument, message: 'Id missing');
    }
    var results = await conn
        .query('select id,name from Packliste where id=?', [request.id]);
    if (results.isEmpty) {
      call.sendTrailers(
          status: grpc.StatusCode.notFound,
          message: 'Packliste with that Id does not exist');
      return null;
    }
    var result = Packliste(id: results.first[0], name: results.first[1]);
    return result;
  }

  @override
  Stream<Packliste> getPacklisten(grpc.ServiceCall call, Empty request) async* {
    var results = await conn.query('select id,name from Packliste');
    for (var r in results) {
      var p = Packliste()
        ..id = r[0]
        ..name = r[1];
      yield p;
    }
  }
}
