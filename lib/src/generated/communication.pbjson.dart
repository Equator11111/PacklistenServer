///
//  Generated code. Do not modify.
//  source: communication.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use packlisteDescriptor instead')
const Packliste$json = const {
  '1': 'Packliste',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Packliste`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packlisteDescriptor = $convert.base64Decode('CglQYWNrbGlzdGUSDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWU=');
@$core.Deprecated('Use idDescriptor instead')
const Id$json = const {
  '1': 'Id',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `Id`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List idDescriptor = $convert.base64Decode('CgJJZBIOCgJpZBgBIAEoBVICaWQ=');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use statusDescriptor instead')
const Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.Status.Status', '10': 'status'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
  '4': const [Status_Status$json],
};

@$core.Deprecated('Use statusDescriptor instead')
const Status_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'ID_NOT_FOUND', '2': 1},
    const {'1': 'ID_ALREADY_USED', '2': 2},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode('CgZTdGF0dXMSJgoGc3RhdHVzGAEgASgOMg4uU3RhdHVzLlN0YXR1c1IGc3RhdHVzEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2UiPAoGU3RhdHVzEgsKB1NVQ0NFU1MQABIQCgxJRF9OT1RfRk9VTkQQARITCg9JRF9BTFJFQURZX1VTRUQQAg==');