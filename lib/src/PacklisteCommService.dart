import 'package:mysql1/mysql1.dart';
import 'package:packliste/src/Websocket.dart';
import 'package:packliste/src/generated/common.pb.dart';
import 'package:packliste/src/generated/communication.pbgrpc.dart';
import 'package:grpc/grpc.dart' as grpc;

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
    var results = await conn
        .query('select id,name from Packliste where id=?', [resultId]);
    return Packliste(id: results.first[0], name: results.first[1]);
  }

  @override
  Future<Empty> deletePackliste(grpc.ServiceCall call, Id request) async {
    var results =
        await conn.query('DELETE FROM Packliste where id=?', [request.id]);
    if (results.affectedRows == 0) {
      call.sendTrailers(
          status: grpc.StatusCode.notFound,
          message: 'Packliste with that Id not found');
      return Empty();
    }
    return Empty();
  }

  @override
  Future<Empty> editPackliste(grpc.ServiceCall call, Packliste request) async {
    var results = await conn.query(
        'UPDATE Packliste SET name =? where id=?', [request.name, request.id]);
    if (results.affectedRows == 0) {
      call.sendTrailers(
          status: grpc.StatusCode.notFound,
          message:
              'Packliste already has that name, or no packliste with that Id found');
      return Empty();
    }
    return Empty();
  }

  @override
  Future<Packliste> getPackliste(grpc.ServiceCall call, Id request) async {
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
