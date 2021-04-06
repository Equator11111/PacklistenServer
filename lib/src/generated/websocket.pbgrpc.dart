///
//  Generated code. Do not modify.
//  source: websocket.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'common.pb.dart' as $1;
import 'websocket.pb.dart' as $2;
export 'websocket.pb.dart';

class PacklisteSocketClient extends $grpc.Client {
  static final _$getSocket = $grpc.ClientMethod<$1.Id, $2.Packet>(
      '/PacklisteSocket/GetSocket',
      ($1.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Packet.fromBuffer(value));
  static final _$packlisteUpdates = $grpc.ClientMethod<$1.Empty, $2.Packet>(
      '/PacklisteSocket/PacklisteUpdates',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Packet.fromBuffer(value));

  PacklisteSocketClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$2.Packet> getSocket($1.Id request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getSocket, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$2.Packet> packlisteUpdates($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$packlisteUpdates, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class PacklisteSocketServiceBase extends $grpc.Service {
  $core.String get $name => 'PacklisteSocket';

  PacklisteSocketServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Id, $2.Packet>(
        'GetSocket',
        getSocket_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Id.fromBuffer(value),
        ($2.Packet value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.Packet>(
        'PacklisteUpdates',
        packlisteUpdates_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.Packet value) => value.writeToBuffer()));
  }

  $async.Stream<$2.Packet> getSocket_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Id> request) async* {
    yield* getSocket(call, await request);
  }

  $async.Stream<$2.Packet> packlisteUpdates_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* packlisteUpdates(call, await request);
  }

  $async.Stream<$2.Packet> getSocket($grpc.ServiceCall call, $1.Id request);
  $async.Stream<$2.Packet> packlisteUpdates(
      $grpc.ServiceCall call, $1.Empty request);
}
