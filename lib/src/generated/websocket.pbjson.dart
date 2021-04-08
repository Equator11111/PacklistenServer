///
//  Generated code. Do not modify.
//  source: websocket.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use packetTypeDescriptor instead')
const PacketType$json = const {
  '1': 'PacketType',
  '2': const [
    const {'1': 'PACKLISTE_CREATE', '2': 0},
    const {'1': 'PACKLISTE_EDIT', '2': 1},
    const {'1': 'PACKLISTE_DELETE', '2': 2},
    const {'1': 'CATEGORY_CREATE', '2': 3},
    const {'1': 'CATEGORY_EDIT', '2': 4},
    const {'1': 'CATEGORY_DELETE', '2': 5},
    const {'1': 'ITEM_CREATE', '2': 6},
    const {'1': 'ITEM_EDIT', '2': 7},
    const {'1': 'ITEM_DELETE', '2': 8},
    const {'1': 'ITEM_MEMBER_EDIT', '2': 9},
    const {'1': 'ITEM_PACK', '2': 10},
    const {'1': 'MEMBER_CREATE', '2': 11},
    const {'1': 'MEMBER_EDIT', '2': 12},
    const {'1': 'MEMBER_DELETE', '2': 13},
  ],
};

/// Descriptor for `PacketType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List packetTypeDescriptor = $convert.base64Decode('CgpQYWNrZXRUeXBlEhQKEFBBQ0tMSVNURV9DUkVBVEUQABISCg5QQUNLTElTVEVfRURJVBABEhQKEFBBQ0tMSVNURV9ERUxFVEUQAhITCg9DQVRFR09SWV9DUkVBVEUQAxIRCg1DQVRFR09SWV9FRElUEAQSEwoPQ0FURUdPUllfREVMRVRFEAUSDwoLSVRFTV9DUkVBVEUQBhINCglJVEVNX0VESVQQBxIPCgtJVEVNX0RFTEVURRAIEhQKEElURU1fTUVNQkVSX0VESVQQCRINCglJVEVNX1BBQ0sQChIRCg1NRU1CRVJfQ1JFQVRFEAsSDwoLTUVNQkVSX0VESVQQDBIRCg1NRU1CRVJfREVMRVRFEA0=');
@$core.Deprecated('Use packetDescriptor instead')
const Packet$json = const {
  '1': 'Packet',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.PacketType', '10': 'type'},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'mId', '3': 3, '4': 1, '5': 5, '10': 'mId'},
  ],
};

/// Descriptor for `Packet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packetDescriptor = $convert.base64Decode('CgZQYWNrZXQSHwoEdHlwZRgBIAEoDjILLlBhY2tldFR5cGVSBHR5cGUSDgoCaWQYAiABKAVSAmlkEhAKA21JZBgDIAEoBVIDbUlk');
