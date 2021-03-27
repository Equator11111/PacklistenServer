import 'dart:convert';
import 'dart:io';
import 'package:packliste/src/PacklisteCommService.dart';
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
