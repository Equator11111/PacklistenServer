import 'dart:convert';
import 'dart:io';
import 'package:packliste/src/generated/communication.pbgrpc.dart';
import 'package:grpc/grpc.dart' as grpc;

import 'package:mysql1/mysql1.dart';

class Server {
  Future<void> main(List<String> args) async {
    var file = File('config/config.json');
    var contents = jsonDecode(await file.readAsString());
    var s = contents['dbsettings'];
    var dbsettings = ConnectionSettings(
        host: s['host'],
        port: s['port'],
        user: s['user'],
        password: s['password'],
        db: s['db']);
    var dbconn = await MySqlConnection.connect(dbsettings);
    print('Connected to db ${s['db']} at ${s['host']}:${s['port']}');
    final server = grpc.Server([PacklisteCommService(dbconn)]);
    await server.serve(port: contents['port']);
    print('Server listening on port ${server.port}...');
  }
}

class PacklisteCommService extends PacklisteCommServiceBase {
  final MySqlConnection conn;

  PacklisteCommService(this.conn);

  @override
  Future<Empty> createPackliste(
      grpc.ServiceCall call, Packliste request) async {
    // TODO: implement createPackliste
    print(request.name);
    print(request.id);
    call.sendTrailers(status: grpc.StatusCode.ok, message: "success");
    return Empty();
  }

  @override
  Future<Empty> deletePackliste(grpc.ServiceCall call, Id request) {
    // TODO: implement deletePackliste
    throw UnimplementedError();
  }

  @override
  Future<Empty> editPackliste(grpc.ServiceCall call, Packliste request) {
    // TODO: implement editPackliste
    throw UnimplementedError();
  }

  @override
  Future<Packliste> getPackliste(grpc.ServiceCall call, Id request) async {
    var results = await conn
        .query('select id,name from Packliste where id=?', [request.id]);
    // TODO: implement getPackliste
    if (results.isEmpty) {
      call.sendTrailers(
          status: grpc.StatusCode.notFound,
          message: 'Packliste with that Id does not exist');
      return null;
    }
    var result = Packliste(id: results.first[0], name: results.first[1]);
    //throw UnimplementedError();
    return result;
  }

  @override
  Stream<Packliste> getPacklisten(grpc.ServiceCall call, Empty request) {
    // TODO: implement getPacklisten
    throw UnimplementedError();
  }
}
