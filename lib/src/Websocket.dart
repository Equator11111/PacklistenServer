import 'dart:async';

import 'package:grpc/src/server/call.dart';
import 'package:packliste/src/generated/websocket.pbgrpc.dart';

import 'generated/common.pb.dart';

class WebsocketService extends PacklisteSocketServiceBase {
  StreamWrapper sw;
  Stream stream;
  WebsocketService() {
    sw = StreamWrapper();
    stream = sw.stream;
  }

  void sendPacket(Packet p) {
    sw.add(p);
  }

  @override
  Stream<Packet> getSocket(ServiceCall call, Empty request) {
    print('got client');
    return stream;
  }
}

class StreamWrapper {
  final StreamController _streamController;

  StreamWrapper() : _streamController = StreamController<Packet>();

  void add(Packet p) {
    if (_streamController.hasListener) {
      _streamController.add(p);
    }
  }

  Stream<Packet> get stream => _streamController.stream.asBroadcastStream();
}
