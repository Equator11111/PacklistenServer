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
  static final _$getMembersForItem = $grpc.ClientMethod<$1.Id, $0.Item_Member>(
      '/MemberComm/GetMembersForItem',
      ($1.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Item_Member.fromBuffer(value));

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

  $grpc.ResponseStream<$0.Item_Member> getMembersForItem($1.Id request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getMembersForItem, $async.Stream.fromIterable([request]),
        options: options);
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
    $addMethod($grpc.ServiceMethod<$1.Id, $0.Item_Member>(
        'GetMembersForItem',
        getMembersForItem_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Id.fromBuffer(value),
        ($0.Item_Member value) => value.writeToBuffer()));
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

  $async.Stream<$0.Item_Member> getMembersForItem_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Id> request) async* {
    yield* getMembersForItem(call, await request);
  }

  $async.Future<$0.Member> getMember($grpc.ServiceCall call, $1.Id request);
  $async.Stream<$0.Member> getMembers($grpc.ServiceCall call, $1.Id request);
  $async.Future<$0.Member> createMember(
      $grpc.ServiceCall call, $0.Member request);
  $async.Future<$1.Empty> editMember($grpc.ServiceCall call, $0.Member request);
  $async.Future<$1.Empty> deleteMember($grpc.ServiceCall call, $1.Id request);
  $async.Stream<$0.Item_Member> getMembersForItem(
      $grpc.ServiceCall call, $1.Id request);
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

class ItemCommClient extends $grpc.Client {
  static final _$getItem = $grpc.ClientMethod<$1.Id, $0.Item>(
      '/ItemComm/GetItem',
      ($1.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Item.fromBuffer(value));
  static final _$getItems = $grpc.ClientMethod<$1.Id, $0.Item>(
      '/ItemComm/GetItems',
      ($1.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Item.fromBuffer(value));
  static final _$getItemsForMember = $grpc.ClientMethod<$1.Id, $0.Item_Member>(
      '/ItemComm/GetItemsForMember',
      ($1.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Item_Member.fromBuffer(value));
  static final _$getItemsForMemberAndCategory =
      $grpc.ClientMethod<$0.Member_Category, $0.Item_Member>(
          '/ItemComm/GetItemsForMemberAndCategory',
          ($0.Member_Category value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Item_Member.fromBuffer(value));
  static final _$createItem = $grpc.ClientMethod<$0.Item, $0.Item>(
      '/ItemComm/CreateItem',
      ($0.Item value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Item.fromBuffer(value));
  static final _$editItem = $grpc.ClientMethod<$0.Item, $1.Empty>(
      '/ItemComm/EditItem',
      ($0.Item value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$deleteItem = $grpc.ClientMethod<$1.Id, $1.Empty>(
      '/ItemComm/DeleteItem',
      ($1.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$packItem = $grpc.ClientMethod<$0.Item_Member, $1.Empty>(
      '/ItemComm/PackItem',
      ($0.Item_Member value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$itemMemberEdit =
      $grpc.ClientMethod<$0.Item_Member_Create, $1.Empty>(
          '/ItemComm/ItemMemberEdit',
          ($0.Item_Member_Create value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  ItemCommClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Item> getItem($1.Id request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItem, request, options: options);
  }

  $grpc.ResponseStream<$0.Item> getItems($1.Id request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getItems, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.Item_Member> getItemsForMember($1.Id request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getItemsForMember, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.Item_Member> getItemsForMemberAndCategory(
      $0.Member_Category request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getItemsForMemberAndCategory, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Item> createItem($0.Item request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createItem, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> editItem($0.Item request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$editItem, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteItem($1.Id request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteItem, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> packItem($0.Item_Member request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$packItem, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> itemMemberEdit($0.Item_Member_Create request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$itemMemberEdit, request, options: options);
  }
}

abstract class ItemCommServiceBase extends $grpc.Service {
  $core.String get $name => 'ItemComm';

  ItemCommServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Id, $0.Item>(
        'GetItem',
        getItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Id.fromBuffer(value),
        ($0.Item value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Id, $0.Item>(
        'GetItems',
        getItems_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Id.fromBuffer(value),
        ($0.Item value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Id, $0.Item_Member>(
        'GetItemsForMember',
        getItemsForMember_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Id.fromBuffer(value),
        ($0.Item_Member value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Member_Category, $0.Item_Member>(
        'GetItemsForMemberAndCategory',
        getItemsForMemberAndCategory_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Member_Category.fromBuffer(value),
        ($0.Item_Member value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Item, $0.Item>(
        'CreateItem',
        createItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Item.fromBuffer(value),
        ($0.Item value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Item, $1.Empty>(
        'EditItem',
        editItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Item.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Id, $1.Empty>(
        'DeleteItem',
        deleteItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Id.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Item_Member, $1.Empty>(
        'PackItem',
        packItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Item_Member.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Item_Member_Create, $1.Empty>(
        'ItemMemberEdit',
        itemMemberEdit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.Item_Member_Create.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Item> getItem_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Id> request) async {
    return getItem(call, await request);
  }

  $async.Stream<$0.Item> getItems_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Id> request) async* {
    yield* getItems(call, await request);
  }

  $async.Stream<$0.Item_Member> getItemsForMember_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Id> request) async* {
    yield* getItemsForMember(call, await request);
  }

  $async.Stream<$0.Item_Member> getItemsForMemberAndCategory_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.Member_Category> request) async* {
    yield* getItemsForMemberAndCategory(call, await request);
  }

  $async.Future<$0.Item> createItem_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Item> request) async {
    return createItem(call, await request);
  }

  $async.Future<$1.Empty> editItem_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Item> request) async {
    return editItem(call, await request);
  }

  $async.Future<$1.Empty> deleteItem_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Id> request) async {
    return deleteItem(call, await request);
  }

  $async.Future<$1.Empty> packItem_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Item_Member> request) async {
    return packItem(call, await request);
  }

  $async.Future<$1.Empty> itemMemberEdit_Pre($grpc.ServiceCall call,
      $async.Future<$0.Item_Member_Create> request) async {
    return itemMemberEdit(call, await request);
  }

  $async.Future<$0.Item> getItem($grpc.ServiceCall call, $1.Id request);
  $async.Stream<$0.Item> getItems($grpc.ServiceCall call, $1.Id request);
  $async.Stream<$0.Item_Member> getItemsForMember(
      $grpc.ServiceCall call, $1.Id request);
  $async.Stream<$0.Item_Member> getItemsForMemberAndCategory(
      $grpc.ServiceCall call, $0.Member_Category request);
  $async.Future<$0.Item> createItem($grpc.ServiceCall call, $0.Item request);
  $async.Future<$1.Empty> editItem($grpc.ServiceCall call, $0.Item request);
  $async.Future<$1.Empty> deleteItem($grpc.ServiceCall call, $1.Id request);
  $async.Future<$1.Empty> packItem(
      $grpc.ServiceCall call, $0.Item_Member request);
  $async.Future<$1.Empty> itemMemberEdit(
      $grpc.ServiceCall call, $0.Item_Member_Create request);
}
