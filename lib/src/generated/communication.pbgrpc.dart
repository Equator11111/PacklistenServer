///
//  Generated code. Do not modify.
//  source: communication.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'communication.pb.dart' as $0;
export 'communication.pb.dart';

class PacklisteCommClient extends $grpc.Client {
  static final _$createPackliste =
      $grpc.ClientMethod<$0.Packliste, $0.Packliste>(
          '/PacklisteComm/CreatePackliste',
          ($0.Packliste value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Packliste.fromBuffer(value));
  static final _$editPackliste = $grpc.ClientMethod<$0.Packliste, $0.Empty>(
      '/PacklisteComm/EditPackliste',
      ($0.Packliste value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getPackliste = $grpc.ClientMethod<$0.Id, $0.Packliste>(
      '/PacklisteComm/GetPackliste',
      ($0.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Packliste.fromBuffer(value));
  static final _$deletePackliste = $grpc.ClientMethod<$0.Id, $0.Empty>(
      '/PacklisteComm/DeletePackliste',
      ($0.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getPacklisten = $grpc.ClientMethod<$0.Empty, $0.Packliste>(
      '/PacklisteComm/GetPacklisten',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Packliste.fromBuffer(value));

  PacklisteCommClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Packliste> createPackliste($0.Packliste request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPackliste, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> editPackliste($0.Packliste request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editPackliste, request, options: options);
  }

  $grpc.ResponseFuture<$0.Packliste> getPackliste($0.Id request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPackliste, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deletePackliste($0.Id request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePackliste, request, options: options);
  }

  $grpc.ResponseStream<$0.Packliste> getPacklisten($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getPacklisten, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class PacklisteCommServiceBase extends $grpc.Service {
  $core.String get $name => 'PacklisteComm';

  PacklisteCommServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Packliste, $0.Packliste>(
        'CreatePackliste',
        createPackliste_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Packliste.fromBuffer(value),
        ($0.Packliste value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Packliste, $0.Empty>(
        'EditPackliste',
        editPackliste_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Packliste.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Id, $0.Packliste>(
        'GetPackliste',
        getPackliste_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Id.fromBuffer(value),
        ($0.Packliste value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Id, $0.Empty>(
        'DeletePackliste',
        deletePackliste_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Id.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Packliste>(
        'GetPacklisten',
        getPacklisten_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Packliste value) => value.writeToBuffer()));
  }

  $async.Future<$0.Packliste> createPackliste_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Packliste> request) async {
    return createPackliste(call, await request);
  }

  $async.Future<$0.Empty> editPackliste_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Packliste> request) async {
    return editPackliste(call, await request);
  }

  $async.Future<$0.Packliste> getPackliste_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Id> request) async {
    return getPackliste(call, await request);
  }

  $async.Future<$0.Empty> deletePackliste_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Id> request) async {
    return deletePackliste(call, await request);
  }

  $async.Stream<$0.Packliste> getPacklisten_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* getPacklisten(call, await request);
  }

  $async.Future<$0.Packliste> createPackliste(
      $grpc.ServiceCall call, $0.Packliste request);
  $async.Future<$0.Empty> editPackliste(
      $grpc.ServiceCall call, $0.Packliste request);
  $async.Future<$0.Packliste> getPackliste(
      $grpc.ServiceCall call, $0.Id request);
  $async.Future<$0.Empty> deletePackliste(
      $grpc.ServiceCall call, $0.Id request);
  $async.Stream<$0.Packliste> getPacklisten(
      $grpc.ServiceCall call, $0.Empty request);
}
