import 'dart:async';

import 'package:grpc/src/server/call.dart';
import 'package:packliste/src/generated/websocket.pbgrpc.dart';

import 'generated/common.pb.dart';

class WebsocketService extends PacklisteSocketServiceBase {
  StreamWrapper sw;
  WebsocketService() {
    sw = StreamWrapper();
  }

  void sendPacket(Packet p, {int packlisteId}) {
    if (packlisteId == null) {
      sw.add(p);
    } else {
      sw.add(p, packlisteId: packlisteId);
    }
  }

  void deleteStream(int id) {
    sw.deleteStream(id);
  }

  @override
  Stream<Packet> getSocket(ServiceCall call, Id request) {
    print('got client');
    var s = sw.getStream(request.id);
    print(s.isBroadcast);
    return s;
  }

  @override
  Stream<Packet> packlisteUpdates(ServiceCall call, Empty request) {
    print('got client general');
    var s = sw.getStream();
    print(s.isBroadcast);
    return s;
  }
}

class StreamWrapper {
  final Map<int, StreamController<Packet>> _streamControllers = {};
  final Map<int, Stream<Packet>> _streams = {};

  StreamWrapper();

  void add(Packet p, {int packlisteId}) {
    if (packlisteId == null &&
        _streamControllers.containsKey(-1) &&
        _streamControllers[-1].hasListener) {
      _streamControllers[-1].add(p);
      return;
    }
    if (_streamControllers.containsKey(packlisteId) &&
        _streamControllers[packlisteId].hasListener) {
      _streamControllers[packlisteId].add(p);
      return;
    }
  }

  Stream<Packet> getStream([int id]) {
    id ??= -1;
    if (!_streamControllers.containsKey(id)) {
      _streamControllers[id] = StreamController<Packet>();
      _streams[id] = _streamControllers[id].stream.asBroadcastStream();
    }
    return _streams[id];
  }

  void deleteStream(int id) {
    if (_streamControllers.containsKey(id)) {
      _streamControllers[id].close();
      _streamControllers.remove(id);
      _streams.remove(id);
    }
  }
}
