import 'dart:convert';
import 'dart:io';
import 'package:packliste/src/CategoryCommService.dart';
import 'package:packliste/src/ItemCommService.dart';
import 'package:packliste/src/MemberCommService.dart';
import 'package:packliste/src/PacklisteCommService.dart';
import 'package:grpc/grpc.dart' as grpc;

import 'package:mysql1/mysql1.dart';
import 'package:packliste/src/Websocket.dart';

class Server {
  Future<void> main(List<String> args) async {
    var file = File('config/config.json');
    var contents = jsonDecode(await file.readAsString());
    var s = contents['dbsettings'];

    //Connect to database whith settings from config.json
    var dbsettings = ConnectionSettings(
        host: s['host'],
        port: s['port'],
        user: s['user'],
        password: s['password'],
        db: s['db']);
    var dbconn = await MySqlConnection.connect(dbsettings);
    print('Connected to db ${s['db']} at ${s['host']}:${s['port']}');

    final wService = WebsocketService();
    final pComService = PacklisteCommService(dbconn, wService);
    final mComService = MemberCommService(dbconn, wService);
    final cComService = CategoryCommService(dbconn, wService);
    final iComService = ItemCommService(dbconn, wService);

    final server = grpc.Server([
      pComService,
      mComService,
      wService,
      cComService,
      iComService,
    ]);
    await server.serve(port: contents['port']);
    print('Server listening on port ${server.port}...');
  }
}
