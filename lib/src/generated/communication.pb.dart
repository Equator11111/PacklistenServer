///
//  Generated code. Do not modify.
//  source: communication.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Member_Category extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Member_Category', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'member', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Member_Category._() : super();
  factory Member_Category({
    $core.int? member,
    $core.int? category,
  }) {
    final _result = create();
    if (member != null) {
      _result.member = member;
    }
    if (category != null) {
      _result.category = category;
    }
    return _result;
  }
  factory Member_Category.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Member_Category.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Member_Category clone() => Member_Category()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Member_Category copyWith(void Function(Member_Category) updates) => super.copyWith((message) => updates(message as Member_Category)) as Member_Category; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Member_Category create() => Member_Category._();
  Member_Category createEmptyInstance() => create();
  static $pb.PbList<Member_Category> createRepeated() => $pb.PbList<Member_Category>();
  @$core.pragma('dart2js:noInline')
  static Member_Category getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Member_Category>(create);
  static Member_Category? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get member => $_getIZ(0);
  @$pb.TagNumber(1)
  set member($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMember() => $_has(0);
  @$pb.TagNumber(1)
  void clearMember() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get category => $_getIZ(1);
  @$pb.TagNumber(2)
  set category($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => clearField(2);
}

class Item_Member extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Item_Member', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'item', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'member', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Item_Member._() : super();
  factory Item_Member({
    $core.int? item,
    $core.int? member,
    $core.int? amount,
  }) {
    final _result = create();
    if (item != null) {
      _result.item = item;
    }
    if (member != null) {
      _result.member = member;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory Item_Member.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Item_Member.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Item_Member clone() => Item_Member()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Item_Member copyWith(void Function(Item_Member) updates) => super.copyWith((message) => updates(message as Item_Member)) as Item_Member; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Item_Member create() => Item_Member._();
  Item_Member createEmptyInstance() => create();
  static $pb.PbList<Item_Member> createRepeated() => $pb.PbList<Item_Member>();
  @$core.pragma('dart2js:noInline')
  static Item_Member getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Item_Member>(create);
  static Item_Member? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get item => $_getIZ(0);
  @$pb.TagNumber(1)
  set item($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get member => $_getIZ(1);
  @$pb.TagNumber(2)
  set member($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMember() => $_has(1);
  @$pb.TagNumber(2)
  void clearMember() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get amount => $_getIZ(2);
  @$pb.TagNumber(3)
  set amount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);
}

class Item_Member_Create extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Item_Member_Create', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'item', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'member', $pb.PbFieldType.O3)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pack')
    ..hasRequiredFields = false
  ;

  Item_Member_Create._() : super();
  factory Item_Member_Create({
    $core.int? item,
    $core.int? member,
    $core.bool? pack,
  }) {
    final _result = create();
    if (item != null) {
      _result.item = item;
    }
    if (member != null) {
      _result.member = member;
    }
    if (pack != null) {
      _result.pack = pack;
    }
    return _result;
  }
  factory Item_Member_Create.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Item_Member_Create.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Item_Member_Create clone() => Item_Member_Create()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Item_Member_Create copyWith(void Function(Item_Member_Create) updates) => super.copyWith((message) => updates(message as Item_Member_Create)) as Item_Member_Create; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Item_Member_Create create() => Item_Member_Create._();
  Item_Member_Create createEmptyInstance() => create();
  static $pb.PbList<Item_Member_Create> createRepeated() => $pb.PbList<Item_Member_Create>();
  @$core.pragma('dart2js:noInline')
  static Item_Member_Create getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Item_Member_Create>(create);
  static Item_Member_Create? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get item => $_getIZ(0);
  @$pb.TagNumber(1)
  set item($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get member => $_getIZ(1);
  @$pb.TagNumber(2)
  set member($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMember() => $_has(1);
  @$pb.TagNumber(2)
  void clearMember() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get pack => $_getBF(2);
  @$pb.TagNumber(3)
  set pack($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPack() => $_has(2);
  @$pb.TagNumber(3)
  void clearPack() => clearField(3);
}

class Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Item', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Category', $pb.PbFieldType.O3, protoName: 'Category')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Item._() : super();
  factory Item({
    $core.int? id,
    $core.String? name,
    $core.int? category,
    $core.int? amount,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (category != null) {
      _result.category = category;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Item clone() => Item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Item copyWith(void Function(Item) updates) => super.copyWith((message) => updates(message as Item)) as Item; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Item create() => Item._();
  Item createEmptyInstance() => create();
  static $pb.PbList<Item> createRepeated() => $pb.PbList<Item>();
  @$core.pragma('dart2js:noInline')
  static Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Item>(create);
  static Item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get category => $_getIZ(2);
  @$pb.TagNumber(3)
  set category($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get amount => $_getIZ(3);
  @$pb.TagNumber(4)
  set amount($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAmount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAmount() => clearField(4);
}

class Category extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Category', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pId', $pb.PbFieldType.O3, protoName: 'pId')
    ..hasRequiredFields = false
  ;

  Category._() : super();
  factory Category({
    $core.int? id,
    $core.String? name,
    $core.int? pId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (pId != null) {
      _result.pId = pId;
    }
    return _result;
  }
  factory Category.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Category.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Category clone() => Category()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Category copyWith(void Function(Category) updates) => super.copyWith((message) => updates(message as Category)) as Category; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Category create() => Category._();
  Category createEmptyInstance() => create();
  static $pb.PbList<Category> createRepeated() => $pb.PbList<Category>();
  @$core.pragma('dart2js:noInline')
  static Category getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Category>(create);
  static Category? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get pId => $_getIZ(2);
  @$pb.TagNumber(3)
  set pId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPId() => clearField(3);
}

class Packliste extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Packliste', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  Packliste._() : super();
  factory Packliste({
    $core.int? id,
    $core.String? name,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory Packliste.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Packliste.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Packliste clone() => Packliste()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Packliste copyWith(void Function(Packliste) updates) => super.copyWith((message) => updates(message as Packliste)) as Packliste; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Packliste create() => Packliste._();
  Packliste createEmptyInstance() => create();
  static $pb.PbList<Packliste> createRepeated() => $pb.PbList<Packliste>();
  @$core.pragma('dart2js:noInline')
  static Packliste getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Packliste>(create);
  static Packliste? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class Member extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Member', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pId', $pb.PbFieldType.O3, protoName: 'pId')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'everyone')
    ..hasRequiredFields = false
  ;

  Member._() : super();
  factory Member({
    $core.int? id,
    $core.String? name,
    $core.int? pId,
    $core.bool? everyone,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (pId != null) {
      _result.pId = pId;
    }
    if (everyone != null) {
      _result.everyone = everyone;
    }
    return _result;
  }
  factory Member.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Member.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Member clone() => Member()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Member copyWith(void Function(Member) updates) => super.copyWith((message) => updates(message as Member)) as Member; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Member create() => Member._();
  Member createEmptyInstance() => create();
  static $pb.PbList<Member> createRepeated() => $pb.PbList<Member>();
  @$core.pragma('dart2js:noInline')
  static Member getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Member>(create);
  static Member? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get pId => $_getIZ(2);
  @$pb.TagNumber(3)
  set pId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPId() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get everyone => $_getBF(3);
  @$pb.TagNumber(4)
  set everyone($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEveryone() => $_has(3);
  @$pb.TagNumber(4)
  void clearEveryone() => clearField(4);
}

