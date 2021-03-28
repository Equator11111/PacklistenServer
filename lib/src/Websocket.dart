import 'dart:async';

import 'package:grpc/src/server/call.dart';
import 'package:packliste/src/generated/websocket.pbgrpc.dart';

import 'generated/common.pb.dart';

class WebsocketService extends PacklisteSocketServiceBase {
  final _streamController = StreamController<Packet>();

  Stream<Packet> get stream => _streamController.stream.asBroadcastStream();

  void sendPacket(Packet p) {
    _streamController.add(p);
  }

  @override
  Stream<Packet> getSocket(ServiceCall call, Empty request) {
    return stream;
  }
}
