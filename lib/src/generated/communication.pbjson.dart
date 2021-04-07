///
//  Generated code. Do not modify.
//  source: communication.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use itemDescriptor instead')
const Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'Category', '3': 3, '4': 1, '5': 5, '10': 'Category'},
    const {'1': 'amount', '3': 4, '4': 1, '5': 5, '10': 'amount'},
  ],
};

/// Descriptor for `Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDescriptor = $convert.base64Decode('CgRJdGVtEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhoKCENhdGVnb3J5GAMgASgFUghDYXRlZ29yeRIWCgZhbW91bnQYBCABKAVSBmFtb3VudA==');
@$core.Deprecated('Use categoryDescriptor instead')
const Category$json = const {
  '1': 'Category',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'pId', '3': 3, '4': 1, '5': 5, '10': 'pId'},
  ],
};

/// Descriptor for `Category`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryDescriptor = $convert.base64Decode('CghDYXRlZ29yeRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIQCgNwSWQYAyABKAVSA3BJZA==');
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
@$core.Deprecated('Use memberDescriptor instead')
const Member$json = const {
  '1': 'Member',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'pId', '3': 3, '4': 1, '5': 5, '10': 'pId'},
    const {'1': 'everyone', '3': 4, '4': 1, '5': 8, '10': 'everyone'},
  ],
};

/// Descriptor for `Member`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberDescriptor = $convert.base64Decode('CgZNZW1iZXISDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSEAoDcElkGAMgASgFUgNwSWQSGgoIZXZlcnlvbmUYBCABKAhSCGV2ZXJ5b25l');
