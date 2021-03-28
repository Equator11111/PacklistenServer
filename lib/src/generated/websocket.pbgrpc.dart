///
//  Generated code. Do not modify.
//  source: websocket.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'common.pb.dart' as $0;
import 'websocket.pb.dart' as $1;
export 'websocket.pb.dart';

class PacklisteSocketClient extends $grpc.Client {
  static final _$getSocket = $grpc.ClientMethod<$0.Empty, $1.Packet>(
      '/PacklisteSocket/GetSocket',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Packet.fromBuffer(value));

  PacklisteSocketClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$1.Packet> getSocket($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getSocket, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class PacklisteSocketServiceBase extends $grpc.Service {
  $core.String get $name => 'PacklisteSocket';

  PacklisteSocketServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.Packet>(
        'GetSocket',
        getSocket_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.Packet value) => value.writeToBuffer()));
  }

  $async.Stream<$1.Packet> getSocket_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getSocket(call, await request);
  }

  $async.Stream<$1.Packet> getSocket($grpc.ServiceCall call, $0.Empty request);
}
