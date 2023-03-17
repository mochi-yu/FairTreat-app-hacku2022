///
//  Generated code. Do not modify.
//  source: lib/grpc/protos/warikan.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use bILL_CHANGE_TYPEDescriptor instead')
const BILL_CHANGE_TYPE$json = const {
  '1': 'BILL_CHANGE_TYPE',
  '2': const [
    const {'1': 'OWNER', '2': 0},
    const {'1': 'GUEST', '2': 1},
    const {'1': 'BILL', '2': 2},
    const {'1': 'ITEM', '2': 3},
  ],
};

/// Descriptor for `BILL_CHANGE_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List bILL_CHANGE_TYPEDescriptor = $convert.base64Decode('ChBCSUxMX0NIQU5HRV9UWVBFEgkKBU9XTkVSEAASCQoFR1VFU1QQARIICgRCSUxMEAISCAoESVRFTRAD');
@$core.Deprecated('Use billDescriptor instead')
const Bill$json = const {
  '1': 'Bill',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'host', '3': 3, '4': 1, '5': 11, '6': '.warikan.User', '10': 'host'},
    const {'1': 'guests', '3': 4, '4': 3, '5': 11, '6': '.warikan.User', '10': 'guests'},
  ],
};

/// Descriptor for `Bill`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List billDescriptor = $convert.base64Decode('CgRCaWxsEg4KAmlkGAEgASgJUgJpZBIaCghwYXNzd29yZBgCIAEoCVIIcGFzc3dvcmQSIQoEaG9zdBgDIAEoCzINLndhcmlrYW4uVXNlclIEaG9zdBIlCgZndWVzdHMYBCADKAsyDS53YXJpa2FuLlVzZXJSBmd1ZXN0cw==');
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1l');
@$core.Deprecated('Use itemDescriptor instead')
const Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 5, '10': 'amount'},
    const {'1': 'price', '3': 4, '4': 1, '5': 5, '10': 'price'},
    const {'1': 'owners', '3': 5, '4': 3, '5': 11, '6': '.warikan.User', '10': 'owners'},
  ],
};

/// Descriptor for `Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDescriptor = $convert.base64Decode('CgRJdGVtEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhYKBmFtb3VudBgDIAEoBVIGYW1vdW50EhQKBXByaWNlGAQgASgFUgVwcmljZRIlCgZvd25lcnMYBSADKAsyDS53YXJpa2FuLlVzZXJSBm93bmVycw==');
@$core.Deprecated('Use createBillRequestDescriptor instead')
const CreateBillRequest$json = const {
  '1': 'CreateBillRequest',
  '2': const [
    const {'1': 'host', '3': 1, '4': 1, '5': 11, '6': '.warikan.User', '10': 'host'},
  ],
};

/// Descriptor for `CreateBillRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBillRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVCaWxsUmVxdWVzdBIhCgRob3N0GAEgASgLMg0ud2FyaWthbi5Vc2VyUgRob3N0');
@$core.Deprecated('Use createBillResponseDescriptor instead')
const CreateBillResponse$json = const {
  '1': 'CreateBillResponse',
  '2': const [
    const {'1': 'bill', '3': 1, '4': 1, '5': 11, '6': '.warikan.Bill', '10': 'bill'},
    const {'1': 'ownerPassword', '3': 2, '4': 1, '5': 9, '10': 'ownerPassword'},
  ],
};

/// Descriptor for `CreateBillResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBillResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVCaWxsUmVzcG9uc2USIQoEYmlsbBgBIAEoCzINLndhcmlrYW4uQmlsbFIEYmlsbBIkCg1vd25lclBhc3N3b3JkGAIgASgJUg1vd25lclBhc3N3b3Jk');
@$core.Deprecated('Use connectBillRequestDescriptor instead')
const ConnectBillRequest$json = const {
  '1': 'ConnectBillRequest',
  '2': const [
    const {'1': 'bill', '3': 1, '4': 1, '5': 11, '6': '.warikan.Bill', '10': 'bill'},
  ],
};

/// Descriptor for `ConnectBillRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectBillRequestDescriptor = $convert.base64Decode('ChJDb25uZWN0QmlsbFJlcXVlc3QSIQoEYmlsbBgBIAEoCzINLndhcmlrYW4uQmlsbFIEYmlsbA==');
@$core.Deprecated('Use connectBillResponseDescriptor instead')
const ConnectBillResponse$json = const {
  '1': 'ConnectBillResponse',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.warikan.BILL_CHANGE_TYPE', '10': 'type'},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `ConnectBillResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectBillResponseDescriptor = $convert.base64Decode('ChNDb25uZWN0QmlsbFJlc3BvbnNlEi0KBHR5cGUYASABKA4yGS53YXJpa2FuLkJJTExfQ0hBTkdFX1RZUEVSBHR5cGUSDgoCaWQYAiABKAVSAmlk');
@$core.Deprecated('Use confirmBillRequestDescriptor instead')
const ConfirmBillRequest$json = const {
  '1': 'ConfirmBillRequest',
  '2': const [
    const {'1': 'bill', '3': 1, '4': 1, '5': 11, '6': '.warikan.Bill', '10': 'bill'},
    const {'1': 'ownerPassword', '3': 2, '4': 1, '5': 9, '10': 'ownerPassword'},
  ],
};

/// Descriptor for `ConfirmBillRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List confirmBillRequestDescriptor = $convert.base64Decode('ChJDb25maXJtQmlsbFJlcXVlc3QSIQoEYmlsbBgBIAEoCzINLndhcmlrYW4uQmlsbFIEYmlsbBIkCg1vd25lclBhc3N3b3JkGAIgASgJUg1vd25lclBhc3N3b3Jk');
@$core.Deprecated('Use confirmBillResponseDescriptor instead')
const ConfirmBillResponse$json = const {
  '1': 'ConfirmBillResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `ConfirmBillResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List confirmBillResponseDescriptor = $convert.base64Decode('ChNDb25maXJtQmlsbFJlc3BvbnNlEhYKBnN0YXR1cxgBIAEoCFIGc3RhdHVz');
@$core.Deprecated('Use addUserRequestDescriptor instead')
const AddUserRequest$json = const {
  '1': 'AddUserRequest',
  '2': const [
    const {'1': 'bill', '3': 1, '4': 1, '5': 11, '6': '.warikan.Bill', '10': 'bill'},
    const {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.warikan.User', '10': 'user'},
  ],
};

/// Descriptor for `AddUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addUserRequestDescriptor = $convert.base64Decode('Cg5BZGRVc2VyUmVxdWVzdBIhCgRiaWxsGAEgASgLMg0ud2FyaWthbi5CaWxsUgRiaWxsEiEKBHVzZXIYAiABKAsyDS53YXJpa2FuLlVzZXJSBHVzZXI=');
@$core.Deprecated('Use addUserResponseDescriptor instead')
const AddUserResponse$json = const {
  '1': 'AddUserResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `AddUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addUserResponseDescriptor = $convert.base64Decode('Cg9BZGRVc2VyUmVzcG9uc2USFgoGc3RhdHVzGAEgASgIUgZzdGF0dXM=');
@$core.Deprecated('Use removeUserRequestDescriptor instead')
const RemoveUserRequest$json = const {
  '1': 'RemoveUserRequest',
  '2': const [
    const {'1': 'bill', '3': 1, '4': 1, '5': 11, '6': '.warikan.Bill', '10': 'bill'},
    const {'1': 'hostPassword', '3': 2, '4': 1, '5': 9, '10': 'hostPassword'},
    const {'1': 'userId', '3': 3, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `RemoveUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeUserRequestDescriptor = $convert.base64Decode('ChFSZW1vdmVVc2VyUmVxdWVzdBIhCgRiaWxsGAEgASgLMg0ud2FyaWthbi5CaWxsUgRiaWxsEiIKDGhvc3RQYXNzd29yZBgCIAEoCVIMaG9zdFBhc3N3b3JkEhYKBnVzZXJJZBgDIAEoBVIGdXNlcklk');
@$core.Deprecated('Use removeUserResponseDescriptor instead')
const RemoveUserResponse$json = const {
  '1': 'RemoveUserResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `RemoveUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeUserResponseDescriptor = $convert.base64Decode('ChJSZW1vdmVVc2VyUmVzcG9uc2USFgoGc3RhdHVzGAEgASgIUgZzdGF0dXM=');
@$core.Deprecated('Use getUsersListRequestDescriptor instead')
const GetUsersListRequest$json = const {
  '1': 'GetUsersListRequest',
  '2': const [
    const {'1': 'bill', '3': 1, '4': 1, '5': 11, '6': '.warikan.Bill', '10': 'bill'},
  ],
};

/// Descriptor for `GetUsersListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUsersListRequestDescriptor = $convert.base64Decode('ChNHZXRVc2Vyc0xpc3RSZXF1ZXN0EiEKBGJpbGwYASABKAsyDS53YXJpa2FuLkJpbGxSBGJpbGw=');
@$core.Deprecated('Use getUsersListResponseDescriptor instead')
const GetUsersListResponse$json = const {
  '1': 'GetUsersListResponse',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'users', '3': 2, '4': 3, '5': 11, '6': '.warikan.User', '10': 'users'},
  ],
};

/// Descriptor for `GetUsersListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUsersListResponseDescriptor = $convert.base64Decode('ChRHZXRVc2Vyc0xpc3RSZXNwb25zZRIUCgVjb3VudBgBIAEoBVIFY291bnQSIwoFdXNlcnMYAiADKAsyDS53YXJpa2FuLlVzZXJSBXVzZXJz');
@$core.Deprecated('Use setItemsRequestDescriptor instead')
const SetItemsRequest$json = const {
  '1': 'SetItemsRequest',
  '2': const [
    const {'1': 'bill', '3': 1, '4': 1, '5': 11, '6': '.warikan.Bill', '10': 'bill'},
    const {'1': 'ownerPassword', '3': 2, '4': 1, '5': 9, '10': 'ownerPassword'},
    const {'1': 'items', '3': 3, '4': 3, '5': 11, '6': '.warikan.Item', '10': 'items'},
  ],
};

/// Descriptor for `SetItemsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setItemsRequestDescriptor = $convert.base64Decode('Cg9TZXRJdGVtc1JlcXVlc3QSIQoEYmlsbBgBIAEoCzINLndhcmlrYW4uQmlsbFIEYmlsbBIkCg1vd25lclBhc3N3b3JkGAIgASgJUg1vd25lclBhc3N3b3JkEiMKBWl0ZW1zGAMgAygLMg0ud2FyaWthbi5JdGVtUgVpdGVtcw==');
@$core.Deprecated('Use setItemsResponseDescriptor instead')
const SetItemsResponse$json = const {
  '1': 'SetItemsResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `SetItemsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setItemsResponseDescriptor = $convert.base64Decode('ChBTZXRJdGVtc1Jlc3BvbnNlEhYKBnN0YXR1cxgBIAEoCFIGc3RhdHVz');
@$core.Deprecated('Use addItemRequestDescriptor instead')
const AddItemRequest$json = const {
  '1': 'AddItemRequest',
  '2': const [
    const {'1': 'bill', '3': 1, '4': 1, '5': 11, '6': '.warikan.Bill', '10': 'bill'},
    const {'1': 'ownerPassword', '3': 2, '4': 1, '5': 9, '10': 'ownerPassword'},
    const {'1': 'item', '3': 3, '4': 1, '5': 11, '6': '.warikan.Item', '10': 'item'},
  ],
};

/// Descriptor for `AddItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addItemRequestDescriptor = $convert.base64Decode('Cg5BZGRJdGVtUmVxdWVzdBIhCgRiaWxsGAEgASgLMg0ud2FyaWthbi5CaWxsUgRiaWxsEiQKDW93bmVyUGFzc3dvcmQYAiABKAlSDW93bmVyUGFzc3dvcmQSIQoEaXRlbRgDIAEoCzINLndhcmlrYW4uSXRlbVIEaXRlbQ==');
@$core.Deprecated('Use addItemResponseDescriptor instead')
const AddItemResponse$json = const {
  '1': 'AddItemResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `AddItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addItemResponseDescriptor = $convert.base64Decode('Cg9BZGRJdGVtUmVzcG9uc2USFgoGc3RhdHVzGAEgASgIUgZzdGF0dXM=');
@$core.Deprecated('Use removeItemRequestDescriptor instead')
const RemoveItemRequest$json = const {
  '1': 'RemoveItemRequest',
  '2': const [
    const {'1': 'bill', '3': 1, '4': 1, '5': 11, '6': '.warikan.Bill', '10': 'bill'},
    const {'1': 'ownerPassword', '3': 2, '4': 1, '5': 9, '10': 'ownerPassword'},
    const {'1': 'itemId', '3': 3, '4': 1, '5': 5, '10': 'itemId'},
  ],
};

/// Descriptor for `RemoveItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeItemRequestDescriptor = $convert.base64Decode('ChFSZW1vdmVJdGVtUmVxdWVzdBIhCgRiaWxsGAEgASgLMg0ud2FyaWthbi5CaWxsUgRiaWxsEiQKDW93bmVyUGFzc3dvcmQYAiABKAlSDW93bmVyUGFzc3dvcmQSFgoGaXRlbUlkGAMgASgFUgZpdGVtSWQ=');
@$core.Deprecated('Use removeItemResponseDescriptor instead')
const RemoveItemResponse$json = const {
  '1': 'RemoveItemResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `RemoveItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeItemResponseDescriptor = $convert.base64Decode('ChJSZW1vdmVJdGVtUmVzcG9uc2USFgoGc3RhdHVzGAEgASgIUgZzdGF0dXM=');
@$core.Deprecated('Use getItemsListRequestDescriptor instead')
const GetItemsListRequest$json = const {
  '1': 'GetItemsListRequest',
  '2': const [
    const {'1': 'bill', '3': 1, '4': 1, '5': 11, '6': '.warikan.Bill', '10': 'bill'},
  ],
};

/// Descriptor for `GetItemsListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemsListRequestDescriptor = $convert.base64Decode('ChNHZXRJdGVtc0xpc3RSZXF1ZXN0EiEKBGJpbGwYASABKAsyDS53YXJpa2FuLkJpbGxSBGJpbGw=');
@$core.Deprecated('Use getItemsListResponseDescriptor instead')
const GetItemsListResponse$json = const {
  '1': 'GetItemsListResponse',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.warikan.Item', '10': 'items'},
  ],
};

/// Descriptor for `GetItemsListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemsListResponseDescriptor = $convert.base64Decode('ChRHZXRJdGVtc0xpc3RSZXNwb25zZRIUCgVjb3VudBgBIAEoBVIFY291bnQSIwoFaXRlbXMYAiADKAsyDS53YXJpa2FuLkl0ZW1SBWl0ZW1z');
@$core.Deprecated('Use getItemRequestDescriptor instead')
const GetItemRequest$json = const {
  '1': 'GetItemRequest',
  '2': const [
    const {'1': 'bill', '3': 1, '4': 1, '5': 11, '6': '.warikan.Bill', '10': 'bill'},
    const {'1': 'itemId', '3': 2, '4': 1, '5': 5, '10': 'itemId'},
  ],
};

/// Descriptor for `GetItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemRequestDescriptor = $convert.base64Decode('Cg5HZXRJdGVtUmVxdWVzdBIhCgRiaWxsGAEgASgLMg0ud2FyaWthbi5CaWxsUgRiaWxsEhYKBml0ZW1JZBgCIAEoBVIGaXRlbUlk');
@$core.Deprecated('Use getItemResponseDescriptor instead')
const GetItemResponse$json = const {
  '1': 'GetItemResponse',
  '2': const [
    const {'1': 'item', '3': 1, '4': 1, '5': 11, '6': '.warikan.Item', '10': 'item'},
  ],
};

/// Descriptor for `GetItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemResponseDescriptor = $convert.base64Decode('Cg9HZXRJdGVtUmVzcG9uc2USIQoEaXRlbRgBIAEoCzINLndhcmlrYW4uSXRlbVIEaXRlbQ==');
@$core.Deprecated('Use setItemOwnersRequestDescriptor instead')
const SetItemOwnersRequest$json = const {
  '1': 'SetItemOwnersRequest',
  '2': const [
    const {'1': 'bill', '3': 1, '4': 1, '5': 11, '6': '.warikan.Bill', '10': 'bill'},
    const {'1': 'hostPassword', '3': 2, '4': 1, '5': 9, '10': 'hostPassword'},
    const {'1': 'itemId', '3': 3, '4': 1, '5': 5, '10': 'itemId'},
    const {'1': 'owners', '3': 4, '4': 3, '5': 11, '6': '.warikan.User', '10': 'owners'},
  ],
};

/// Descriptor for `SetItemOwnersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setItemOwnersRequestDescriptor = $convert.base64Decode('ChRTZXRJdGVtT3duZXJzUmVxdWVzdBIhCgRiaWxsGAEgASgLMg0ud2FyaWthbi5CaWxsUgRiaWxsEiIKDGhvc3RQYXNzd29yZBgCIAEoCVIMaG9zdFBhc3N3b3JkEhYKBml0ZW1JZBgDIAEoBVIGaXRlbUlkEiUKBm93bmVycxgEIAMoCzINLndhcmlrYW4uVXNlclIGb3duZXJz');
@$core.Deprecated('Use setItemOwnersResponseDescriptor instead')
const SetItemOwnersResponse$json = const {
  '1': 'SetItemOwnersResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `SetItemOwnersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setItemOwnersResponseDescriptor = $convert.base64Decode('ChVTZXRJdGVtT3duZXJzUmVzcG9uc2USFgoGc3RhdHVzGAEgASgIUgZzdGF0dXM=');
@$core.Deprecated('Use addItemOwnerRequestDescriptor instead')
const AddItemOwnerRequest$json = const {
  '1': 'AddItemOwnerRequest',
  '2': const [
    const {'1': 'bill', '3': 1, '4': 1, '5': 11, '6': '.warikan.Bill', '10': 'bill'},
    const {'1': 'itemId', '3': 2, '4': 1, '5': 5, '10': 'itemId'},
    const {'1': 'owner', '3': 3, '4': 1, '5': 11, '6': '.warikan.User', '10': 'owner'},
  ],
};

/// Descriptor for `AddItemOwnerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addItemOwnerRequestDescriptor = $convert.base64Decode('ChNBZGRJdGVtT3duZXJSZXF1ZXN0EiEKBGJpbGwYASABKAsyDS53YXJpa2FuLkJpbGxSBGJpbGwSFgoGaXRlbUlkGAIgASgFUgZpdGVtSWQSIwoFb3duZXIYAyABKAsyDS53YXJpa2FuLlVzZXJSBW93bmVy');
@$core.Deprecated('Use addItemOwnerResponseDescriptor instead')
const AddItemOwnerResponse$json = const {
  '1': 'AddItemOwnerResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `AddItemOwnerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addItemOwnerResponseDescriptor = $convert.base64Decode('ChRBZGRJdGVtT3duZXJSZXNwb25zZRIWCgZzdGF0dXMYASABKAhSBnN0YXR1cw==');
@$core.Deprecated('Use removeItemOwnerRequestDescriptor instead')
const RemoveItemOwnerRequest$json = const {
  '1': 'RemoveItemOwnerRequest',
  '2': const [
    const {'1': 'bill', '3': 1, '4': 1, '5': 11, '6': '.warikan.Bill', '10': 'bill'},
    const {'1': 'itemId', '3': 2, '4': 1, '5': 5, '10': 'itemId'},
    const {'1': 'userId', '3': 3, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `RemoveItemOwnerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeItemOwnerRequestDescriptor = $convert.base64Decode('ChZSZW1vdmVJdGVtT3duZXJSZXF1ZXN0EiEKBGJpbGwYASABKAsyDS53YXJpa2FuLkJpbGxSBGJpbGwSFgoGaXRlbUlkGAIgASgFUgZpdGVtSWQSFgoGdXNlcklkGAMgASgFUgZ1c2VySWQ=');
@$core.Deprecated('Use removeItemOwnerResponseDescriptor instead')
const RemoveItemOwnerResponse$json = const {
  '1': 'RemoveItemOwnerResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `RemoveItemOwnerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeItemOwnerResponseDescriptor = $convert.base64Decode('ChdSZW1vdmVJdGVtT3duZXJSZXNwb25zZRIWCgZzdGF0dXMYASABKAhSBnN0YXR1cw==');
@$core.Deprecated('Use getItemOwnersRequestDescriptor instead')
const GetItemOwnersRequest$json = const {
  '1': 'GetItemOwnersRequest',
  '2': const [
    const {'1': 'bill', '3': 1, '4': 1, '5': 11, '6': '.warikan.Bill', '10': 'bill'},
    const {'1': 'itemId', '3': 2, '4': 1, '5': 5, '10': 'itemId'},
  ],
};

/// Descriptor for `GetItemOwnersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemOwnersRequestDescriptor = $convert.base64Decode('ChRHZXRJdGVtT3duZXJzUmVxdWVzdBIhCgRiaWxsGAEgASgLMg0ud2FyaWthbi5CaWxsUgRiaWxsEhYKBml0ZW1JZBgCIAEoBVIGaXRlbUlk');
@$core.Deprecated('Use getItemOwnersResponseDescriptor instead')
const GetItemOwnersResponse$json = const {
  '1': 'GetItemOwnersResponse',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'owners', '3': 2, '4': 3, '5': 11, '6': '.warikan.User', '10': 'owners'},
  ],
};

/// Descriptor for `GetItemOwnersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemOwnersResponseDescriptor = $convert.base64Decode('ChVHZXRJdGVtT3duZXJzUmVzcG9uc2USFAoFY291bnQYASABKAVSBWNvdW50EiUKBm93bmVycxgCIAMoCzINLndhcmlrYW4uVXNlclIGb3duZXJz');
