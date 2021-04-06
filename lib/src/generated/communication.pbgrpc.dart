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
import 'common.pb.dart' as $1;
export 'communication.pb.dart';

class PacklisteCommClient extends $grpc.Client {
  static final _$createPackliste =
      $grpc.ClientMethod<$0.Packliste, $0.Packliste>(
          '/PacklisteComm/CreatePackliste',
          ($0.Packliste value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Packliste.fromBuffer(value));
  static final _$editPackliste = $grpc.ClientMethod<$0.Packliste, $1.Empty>(
      '/PacklisteComm/EditPackliste',
      ($0.Packliste value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getPackliste = $grpc.ClientMethod<$1.Id, $0.Packliste>(
      '/PacklisteComm/GetPackliste',
      ($1.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Packliste.fromBuffer(value));
  static final _$deletePackliste = $grpc.ClientMethod<$1.Id, $1.Empty>(
      '/PacklisteComm/DeletePackliste',
      ($1.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getPacklisten = $grpc.ClientMethod<$1.Empty, $0.Packliste>(
      '/PacklisteComm/GetPacklisten',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Packliste.fromBuffer(value));

  PacklisteCommClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Packliste> createPackliste($0.Packliste request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPackliste, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> editPackliste($0.Packliste request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editPackliste, request, options: options);
  }

  $grpc.ResponseFuture<$0.Packliste> getPackliste($1.Id request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPackliste, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deletePackliste($1.Id request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePackliste, request, options: options);
  }

  $grpc.ResponseStream<$0.Packliste> getPacklisten($1.Empty request,
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
    $addMethod($grpc.ServiceMethod<$0.Packliste, $1.Empty>(
        'EditPackliste',
        editPackliste_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Packliste.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Id, $0.Packliste>(
        'GetPackliste',
        getPackliste_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Id.fromBuffer(value),
        ($0.Packliste value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Id, $1.Empty>(
        'DeletePackliste',
        deletePackliste_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Id.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.Packliste>(
        'GetPacklisten',
        getPacklisten_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.Packliste value) => value.writeToBuffer()));
  }

  $async.Future<$0.Packliste> createPackliste_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Packliste> request) async {
    return createPackliste(call, await request);
  }

  $async.Future<$1.Empty> editPackliste_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Packliste> request) async {
    return editPackliste(call, await request);
  }

  $async.Future<$0.Packliste> getPackliste_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Id> request) async {
    return getPackliste(call, await request);
  }

  $async.Future<$1.Empty> deletePackliste_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Id> request) async {
    return deletePackliste(call, await request);
  }

  $async.Stream<$0.Packliste> getPacklisten_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* getPacklisten(call, await request);
  }

  $async.Future<$0.Packliste> createPackliste(
      $grpc.ServiceCall call, $0.Packliste request);
  $async.Future<$1.Empty> editPackliste(
      $grpc.ServiceCall call, $0.Packliste request);
  $async.Future<$0.Packliste> getPackliste(
      $grpc.ServiceCall call, $1.Id request);
  $async.Future<$1.Empty> deletePackliste(
      $grpc.ServiceCall call, $1.Id request);
  $async.Stream<$0.Packliste> getPacklisten(
      $grpc.ServiceCall call, $1.Empty request);
}

class MemberCommClient extends $grpc.Client {
  static final _$getMember = $grpc.ClientMethod<$1.Id, $0.Member>(
      '/MemberComm/GetMember',
      ($1.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Member.fromBuffer(value));
  static final _$getMembers = $grpc.ClientMethod<$1.Id, $0.Member>(
      '/MemberComm/GetMembers',
      ($1.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Member.fromBuffer(value));
  static final _$createMember = $grpc.ClientMethod<$0.Member, $0.Member>(
      '/MemberComm/CreateMember',
      ($0.Member value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Member.fromBuffer(value));
  static final _$editMember = $grpc.ClientMethod<$0.Member, $1.Empty>(
      '/MemberComm/EditMember',
      ($0.Member value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$deleteMember = $grpc.ClientMethod<$1.Id, $1.Empty>(
      '/MemberComm/DeleteMember',
      ($1.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  MemberCommClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Member> getMember($1.Id request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMember, request, options: options);
  }

  $grpc.ResponseStream<$0.Member> getMembers($1.Id request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getMembers, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Member> createMember($0.Member request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createMember, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> editMember($0.Member request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editMember, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteMember($1.Id request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteMember, request, options: options);
  }
}

abstract class MemberCommServiceBase extends $grpc.Service {
  $core.String get $name => 'MemberComm';

  MemberCommServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Id, $0.Member>(
        'GetMember',
        getMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Id.fromBuffer(value),
        ($0.Member value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Id, $0.Member>(
        'GetMembers',
        getMembers_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Id.fromBuffer(value),
        ($0.Member value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Member, $0.Member>(
        'CreateMember',
        createMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Member.fromBuffer(value),
        ($0.Member value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Member, $1.Empty>(
        'EditMember',
        editMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Member.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Id, $1.Empty>(
        'DeleteMember',
        deleteMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Id.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Member> getMember_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Id> request) async {
    return getMember(call, await request);
  }

  $async.Stream<$0.Member> getMembers_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Id> request) async* {
    yield* getMembers(call, await request);
  }

  $async.Future<$0.Member> createMember_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Member> request) async {
    return createMember(call, await request);
  }

  $async.Future<$1.Empty> editMember_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Member> request) async {
    return editMember(call, await request);
  }

  $async.Future<$1.Empty> deleteMember_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Id> request) async {
    return deleteMember(call, await request);
  }

  $async.Future<$0.Member> getMember($grpc.ServiceCall call, $1.Id request);
  $async.Stream<$0.Member> getMembers($grpc.ServiceCall call, $1.Id request);
  $async.Future<$0.Member> createMember(
      $grpc.ServiceCall call, $0.Member request);
  $async.Future<$1.Empty> editMember($grpc.ServiceCall call, $0.Member request);
  $async.Future<$1.Empty> deleteMember($grpc.ServiceCall call, $1.Id request);
}

class CategoryCommClient extends $grpc.Client {
  static final _$getCategory = $grpc.ClientMethod<$1.Id, $0.Category>(
      '/CategoryComm/GetCategory',
      ($1.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Category.fromBuffer(value));
  static final _$getCategories = $grpc.ClientMethod<$1.Id, $0.Category>(
      '/CategoryComm/GetCategories',
      ($1.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Category.fromBuffer(value));
  static final _$createCategory = $grpc.ClientMethod<$0.Category, $0.Category>(
      '/CategoryComm/CreateCategory',
      ($0.Category value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Category.fromBuffer(value));
  static final _$editCategory = $grpc.ClientMethod<$0.Category, $1.Empty>(
      '/CategoryComm/EditCategory',
      ($0.Category value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$deleteCategory = $grpc.ClientMethod<$1.Id, $1.Empty>(
      '/CategoryComm/DeleteCategory',
      ($1.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  CategoryCommClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Category> getCategory($1.Id request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCategory, request, options: options);
  }

  $grpc.ResponseStream<$0.Category> getCategories($1.Id request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getCategories, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Category> createCategory($0.Category request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCategory, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> editCategory($0.Category request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editCategory, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteCategory($1.Id request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCategory, request, options: options);
  }
}

abstract class CategoryCommServiceBase extends $grpc.Service {
  $core.String get $name => 'CategoryComm';

  CategoryCommServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Id, $0.Category>(
        'GetCategory',
        getCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Id.fromBuffer(value),
        ($0.Category value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Id, $0.Category>(
        'GetCategories',
        getCategories_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Id.fromBuffer(value),
        ($0.Category value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Category, $0.Category>(
        'CreateCategory',
        createCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Category.fromBuffer(value),
        ($0.Category value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Category, $1.Empty>(
        'EditCategory',
        editCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Category.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Id, $1.Empty>(
        'DeleteCategory',
        deleteCategory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Id.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Category> getCategory_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Id> request) async {
    return getCategory(call, await request);
  }

  $async.Stream<$0.Category> getCategories_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Id> request) async* {
    yield* getCategories(call, await request);
  }

  $async.Future<$0.Category> createCategory_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Category> request) async {
    return createCategory(call, await request);
  }

  $async.Future<$1.Empty> editCategory_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Category> request) async {
    return editCategory(call, await request);
  }

  $async.Future<$1.Empty> deleteCategory_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Id> request) async {
    return deleteCategory(call, await request);
  }

  $async.Future<$0.Category> getCategory($grpc.ServiceCall call, $1.Id request);
  $async.Stream<$0.Category> getCategories(
      $grpc.ServiceCall call, $1.Id request);
  $async.Future<$0.Category> createCategory(
      $grpc.ServiceCall call, $0.Category request);
  $async.Future<$1.Empty> editCategory(
      $grpc.ServiceCall call, $0.Category request);
  $async.Future<$1.Empty> deleteCategory($grpc.ServiceCall call, $1.Id request);
}
