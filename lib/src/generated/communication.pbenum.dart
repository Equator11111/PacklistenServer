///
//  Generated code. Do not modify.
//  source: communication.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Status_Status extends $pb.ProtobufEnum {
  static const Status_Status SUCCESS = Status_Status._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const Status_Status ID_NOT_FOUND = Status_Status._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ID_NOT_FOUND');
  static const Status_Status ID_ALREADY_USED = Status_Status._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ID_ALREADY_USED');

  static const $core.List<Status_Status> values = <Status_Status> [
    SUCCESS,
    ID_NOT_FOUND,
    ID_ALREADY_USED,
  ];

  static final $core.Map<$core.int, Status_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Status_Status? valueOf($core.int value) => _byValue[value];

  const Status_Status._($core.int v, $core.String n) : super(v, n);
}

