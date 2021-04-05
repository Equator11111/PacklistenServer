import 'package:mysql1/mysql1.dart';
import 'package:packliste/src/Websocket.dart';
import 'package:packliste/src/generated/common.pb.dart';
import 'package:packliste/src/generated/communication.pbgrpc.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:packliste/src/generated/websocket.pb.dart';

class PacklisteCommService extends PacklisteCommServiceBase {
  final MySqlConnection conn;
  final WebsocketService wSocket;

  PacklisteCommService(this.conn, this.wSocket);

  @override
  Future<Packliste> createPackliste(
      grpc.ServiceCall call, Packliste request) async {
    print('CreatePackliste');
    var resultId = (await conn
            .query('INSERT INTO Packliste (name) VALUES (?)', [request.name]))
        .insertId;
    var everyoneMember = await conn.query(
        'INSERT INTO Member (name, packliste, everyone) VALUES (?,?,?)',
        ['Everyone', resultId, 1]);
    var results = await conn
        .query('select id,name from Packliste where id=?', [resultId]);
    wSocket.sendPacket(Packet(type: PacketType.PACKLISTE_CREATE, id: resultId));
    return Packliste(id: results.first[0], name: results.first[1]);
  }

  @override
  Future<Empty> deletePackliste(grpc.ServiceCall call, Id request) async {
    print('DeletePackliste');
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
    return Empty();
  }

  @override
  Future<Empty> editPackliste(grpc.ServiceCall call, Packliste request) async {
    print('EditPackliste');
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
    print('GetPackliste');
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
    print('GetPacklisten');
    var results = await conn.query('select id,name from Packliste');
    for (var r in results) {
      var p = Packliste()
        ..id = r[0]
        ..name = r[1];
      yield p;
    }
  }
}
