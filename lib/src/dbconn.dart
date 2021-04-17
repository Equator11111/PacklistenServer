import 'package:mysql1/mysql1.dart';

class DbConn {
  final ConnectionSettings settings;
  MySqlConnection _dbconn;
  Future initDone;

  DbConn({this.settings}) {
    initDone = _init();
  }

  Future<void> _init() async {
    _dbconn = await MySqlConnection.connect(settings);
    print(
        'Connected to db ${settings.db} at ${settings.host}:${settings.port}');
  }

  Future<Results> query(String query, [List args]) async {
    Results results;
    var tries = 0;
    var success = false;
    while (tries < 5) {
      try {
        results = await _dbconn.query(query, args);
        success = true;
        break;
      } catch (e) {
        print('Restarting db connection');
        await _dbconn.close();
        await _init();
      }
      tries++;
    }
    if (!success) throw ConnectionError._('Could not connect to database');
    return results;
  }
}

class ConnectionError extends Error {
  final String message;

  ConnectionError._(this.message);
}
