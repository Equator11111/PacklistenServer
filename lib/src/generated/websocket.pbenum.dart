///
//  Generated code. Do not modify.
//  source: websocket.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PacketType extends $pb.ProtobufEnum {
  static const PacketType PACKLISTE_CREATE = PacketType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PACKLISTE_CREATE');
  static const PacketType PACKLISTE_EDIT = PacketType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PACKLISTE_EDIT');
  static const PacketType PACKLISTE_DELETE = PacketType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PACKLISTE_DELETE');
  static const PacketType CATEGORY_CREATE = PacketType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CATEGORY_CREATE');
  static const PacketType CATEGORY_EDIT = PacketType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CATEGORY_EDIT');
  static const PacketType CATEGORY_DELETE = PacketType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CATEGORY_DELETE');
  static const PacketType ITEM_CREATE = PacketType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ITEM_CREATE');
  static const PacketType ITEM_EDIT = PacketType._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ITEM_EDIT');
  static const PacketType ITEM_DELETE = PacketType._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ITEM_DELETE');
  static const PacketType ITEM_MOVE = PacketType._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ITEM_MOVE');
  static const PacketType ITEM_PACK = PacketType._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ITEM_PACK');
  static const PacketType MEMBER_CREATE = PacketType._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MEMBER_CREATE');
  static const PacketType MEMBER_EDIT = PacketType._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MEMBER_EDIT');
  static const PacketType MEMBER_DELETE = PacketType._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MEMBER_DELETE');

  static const $core.List<PacketType> values = <PacketType> [
    PACKLISTE_CREATE,
    PACKLISTE_EDIT,
    PACKLISTE_DELETE,
    CATEGORY_CREATE,
    CATEGORY_EDIT,
    CATEGORY_DELETE,
    ITEM_CREATE,
    ITEM_EDIT,
    ITEM_DELETE,
    ITEM_MOVE,
    ITEM_PACK,
    MEMBER_CREATE,
    MEMBER_EDIT,
    MEMBER_DELETE,
  ];

  static final $core.Map<$core.int, PacketType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PacketType? valueOf($core.int value) => _byValue[value];

  const PacketType._($core.int v, $core.String n) : super(v, n);
}

