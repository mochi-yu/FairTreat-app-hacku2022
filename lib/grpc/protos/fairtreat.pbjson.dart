///
//  Generated code. Do not modify.
//  source: lib/grpc/protos/fairtreat.proto
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
    const {'1': 'GUEST', '2': 0},
    const {'1': 'ITEM', '2': 1},
    const {'1': 'CONFIRM', '2': 2},
  ],
};

/// Descriptor for `BILL_CHANGE_TYPE`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List bILL_CHANGE_TYPEDescriptor = $convert.base64Decode('ChBCSUxMX0NIQU5HRV9UWVBFEgkKBUdVRVNUEAASCAoESVRFTRABEgsKB0NPTkZJUk0QAg==');
@$core.Deprecated('Use billDescriptor instead')
const Bill$json = const {
  '1': 'Bill',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'host', '3': 2, '4': 1, '5': 11, '6': '.fairtreat.User', '10': 'host'},
    const {'1': 'guests', '3': 3, '4': 3, '5': 11, '6': '.fairtreat.User', '10': 'guests'},
    const {'1': 'items', '3': 4, '4': 3, '5': 11, '6': '.fairtreat.Item', '10': 'items'},
  ],
};

/// Descriptor for `Bill`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List billDescriptor = $convert.base64Decode('CgRCaWxsEg4KAmlkGAEgASgJUgJpZBIjCgRob3N0GAIgASgLMg8uZmFpcnRyZWF0LlVzZXJSBGhvc3QSJwoGZ3Vlc3RzGAMgAygLMg8uZmFpcnRyZWF0LlVzZXJSBmd1ZXN0cxIlCgVpdGVtcxgEIAMoCzIPLmZhaXJ0cmVhdC5JdGVtUgVpdGVtcw==');
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
    const {'1': 'price', '3': 3, '4': 1, '5': 5, '10': 'price'},
    const {'1': 'owners', '3': 4, '4': 3, '5': 11, '6': '.fairtreat.User', '10': 'owners'},
  ],
};

/// Descriptor for `Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDescriptor = $convert.base64Decode('CgRJdGVtEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBXByaWNlGAMgASgFUgVwcmljZRInCgZvd25lcnMYBCADKAsyDy5mYWlydHJlYXQuVXNlclIGb3duZXJz');
@$core.Deprecated('Use payPriceDescriptor instead')
const PayPrice$json = const {
  '1': 'PayPrice',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.fairtreat.User', '10': 'user'},
    const {'1': 'price', '3': 2, '4': 1, '5': 5, '10': 'price'},
  ],
};

/// Descriptor for `PayPrice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payPriceDescriptor = $convert.base64Decode('CghQYXlQcmljZRIjCgR1c2VyGAEgASgLMg8uZmFpcnRyZWF0LlVzZXJSBHVzZXISFAoFcHJpY2UYAiABKAVSBXByaWNl');
@$core.Deprecated('Use createBillRequestDescriptor instead')
const CreateBillRequest$json = const {
  '1': 'CreateBillRequest',
  '2': const [
    const {'1': 'hostName', '3': 1, '4': 1, '5': 9, '10': 'hostName'},
    const {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.fairtreat.Item', '10': 'items'},
  ],
};

/// Descriptor for `CreateBillRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBillRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVCaWxsUmVxdWVzdBIaCghob3N0TmFtZRgBIAEoCVIIaG9zdE5hbWUSJQoFaXRlbXMYAiADKAsyDy5mYWlydHJlYXQuSXRlbVIFaXRlbXM=');
@$core.Deprecated('Use createBillResponseDescriptor instead')
const CreateBillResponse$json = const {
  '1': 'CreateBillResponse',
  '2': const [
    const {'1': 'billId', '3': 1, '4': 1, '5': 9, '10': 'billId'},
    const {'1': 'host', '3': 2, '4': 1, '5': 11, '6': '.fairtreat.User', '10': 'host'},
  ],
};

/// Descriptor for `CreateBillResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBillResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVCaWxsUmVzcG9uc2USFgoGYmlsbElkGAEgASgJUgZiaWxsSWQSIwoEaG9zdBgCIAEoCzIPLmZhaXJ0cmVhdC5Vc2VyUgRob3N0');
@$core.Deprecated('Use getBillRequestDescriptor instead')
const GetBillRequest$json = const {
  '1': 'GetBillRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetBillRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBillRequestDescriptor = $convert.base64Decode('Cg5HZXRCaWxsUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use getBillResponseDescriptor instead')
const GetBillResponse$json = const {
  '1': 'GetBillResponse',
  '2': const [
    const {'1': 'bill', '3': 1, '4': 1, '5': 11, '6': '.fairtreat.Bill', '10': 'bill'},
  ],
};

/// Descriptor for `GetBillResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBillResponseDescriptor = $convert.base64Decode('Cg9HZXRCaWxsUmVzcG9uc2USIwoEYmlsbBgBIAEoCzIPLmZhaXJ0cmVhdC5CaWxsUgRiaWxs');
@$core.Deprecated('Use connectBillRequestDescriptor instead')
const ConnectBillRequest$json = const {
  '1': 'ConnectBillRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'hostName', '3': 2, '4': 1, '5': 9, '10': 'hostName'},
  ],
};

/// Descriptor for `ConnectBillRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectBillRequestDescriptor = $convert.base64Decode('ChJDb25uZWN0QmlsbFJlcXVlc3QSDgoCaWQYASABKAlSAmlkEhoKCGhvc3ROYW1lGAIgASgJUghob3N0TmFtZQ==');
@$core.Deprecated('Use connectBillResponseDescriptor instead')
const ConnectBillResponse$json = const {
  '1': 'ConnectBillResponse',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.fairtreat.BILL_CHANGE_TYPE', '10': 'type'},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `ConnectBillResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectBillResponseDescriptor = $convert.base64Decode('ChNDb25uZWN0QmlsbFJlc3BvbnNlEi8KBHR5cGUYASABKA4yGy5mYWlydHJlYXQuQklMTF9DSEFOR0VfVFlQRVIEdHlwZRIOCgJpZBgCIAEoBVICaWQ=');
@$core.Deprecated('Use confirmBillRequestDescriptor instead')
const ConfirmBillRequest$json = const {
  '1': 'ConfirmBillRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `ConfirmBillRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List confirmBillRequestDescriptor = $convert.base64Decode('ChJDb25maXJtQmlsbFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use confirmBillResponseDescriptor instead')
const ConfirmBillResponse$json = const {
  '1': 'ConfirmBillResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `ConfirmBillResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List confirmBillResponseDescriptor = $convert.base64Decode('ChNDb25maXJtQmlsbFJlc3BvbnNlEhYKBnN0YXR1cxgBIAEoCFIGc3RhdHVz');
@$core.Deprecated('Use getConfirmBillRequestDescriptor instead')
const GetConfirmBillRequest$json = const {
  '1': 'GetConfirmBillRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetConfirmBillRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConfirmBillRequestDescriptor = $convert.base64Decode('ChVHZXRDb25maXJtQmlsbFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use getConfirmBillResponseDescriptor instead')
const GetConfirmBillResponse$json = const {
  '1': 'GetConfirmBillResponse',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'payPrices', '3': 2, '4': 3, '5': 11, '6': '.fairtreat.PayPrice', '10': 'payPrices'},
  ],
};

/// Descriptor for `GetConfirmBillResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConfirmBillResponseDescriptor = $convert.base64Decode('ChZHZXRDb25maXJtQmlsbFJlc3BvbnNlEhQKBWNvdW50GAEgASgFUgVjb3VudBIxCglwYXlQcmljZXMYAiADKAsyEy5mYWlydHJlYXQuUGF5UHJpY2VSCXBheVByaWNlcw==');
@$core.Deprecated('Use addUserRequestDescriptor instead')
const AddUserRequest$json = const {
  '1': 'AddUserRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `AddUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addUserRequestDescriptor = $convert.base64Decode('Cg5BZGRVc2VyUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use addUserResponseDescriptor instead')
const AddUserResponse$json = const {
  '1': 'AddUserResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
    const {'1': 'guest', '3': 2, '4': 1, '5': 11, '6': '.fairtreat.User', '10': 'guest'},
  ],
};

/// Descriptor for `AddUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addUserResponseDescriptor = $convert.base64Decode('Cg9BZGRVc2VyUmVzcG9uc2USFgoGc3RhdHVzGAEgASgIUgZzdGF0dXMSJQoFZ3Vlc3QYAiABKAsyDy5mYWlydHJlYXQuVXNlclIFZ3Vlc3Q=');
@$core.Deprecated('Use getUsersListRequestDescriptor instead')
const GetUsersListRequest$json = const {
  '1': 'GetUsersListRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetUsersListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUsersListRequestDescriptor = $convert.base64Decode('ChNHZXRVc2Vyc0xpc3RSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use getUsersListResponseDescriptor instead')
const GetUsersListResponse$json = const {
  '1': 'GetUsersListResponse',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'users', '3': 2, '4': 3, '5': 11, '6': '.fairtreat.User', '10': 'users'},
  ],
};

/// Descriptor for `GetUsersListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUsersListResponseDescriptor = $convert.base64Decode('ChRHZXRVc2Vyc0xpc3RSZXNwb25zZRIUCgVjb3VudBgBIAEoBVIFY291bnQSJQoFdXNlcnMYAiADKAsyDy5mYWlydHJlYXQuVXNlclIFdXNlcnM=');
@$core.Deprecated('Use getItemsListRequestDescriptor instead')
const GetItemsListRequest$json = const {
  '1': 'GetItemsListRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetItemsListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemsListRequestDescriptor = $convert.base64Decode('ChNHZXRJdGVtc0xpc3RSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use getItemsListResponseDescriptor instead')
const GetItemsListResponse$json = const {
  '1': 'GetItemsListResponse',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.fairtreat.Item', '10': 'items'},
  ],
};

/// Descriptor for `GetItemsListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemsListResponseDescriptor = $convert.base64Decode('ChRHZXRJdGVtc0xpc3RSZXNwb25zZRIUCgVjb3VudBgBIAEoBVIFY291bnQSJQoFaXRlbXMYAiADKAsyDy5mYWlydHJlYXQuSXRlbVIFaXRlbXM=');
@$core.Deprecated('Use setItemOwnerRequestDescriptor instead')
const SetItemOwnerRequest$json = const {
  '1': 'SetItemOwnerRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'itemId', '3': 2, '4': 1, '5': 5, '10': 'itemId'},
    const {'1': 'owners', '3': 3, '4': 3, '5': 11, '6': '.fairtreat.User', '10': 'owners'},
  ],
};

/// Descriptor for `SetItemOwnerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setItemOwnerRequestDescriptor = $convert.base64Decode('ChNTZXRJdGVtT3duZXJSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIWCgZpdGVtSWQYAiABKAVSBml0ZW1JZBInCgZvd25lcnMYAyADKAsyDy5mYWlydHJlYXQuVXNlclIGb3duZXJz');
@$core.Deprecated('Use setItemOwnerResponseDescriptor instead')
const SetItemOwnerResponse$json = const {
  '1': 'SetItemOwnerResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `SetItemOwnerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setItemOwnerResponseDescriptor = $convert.base64Decode('ChRTZXRJdGVtT3duZXJSZXNwb25zZRIWCgZzdGF0dXMYASABKAhSBnN0YXR1cw==');
@$core.Deprecated('Use getItemOwnersRequestDescriptor instead')
const GetItemOwnersRequest$json = const {
  '1': 'GetItemOwnersRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'itemId', '3': 2, '4': 1, '5': 5, '10': 'itemId'},
  ],
};

/// Descriptor for `GetItemOwnersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemOwnersRequestDescriptor = $convert.base64Decode('ChRHZXRJdGVtT3duZXJzUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFgoGaXRlbUlkGAIgASgFUgZpdGVtSWQ=');
@$core.Deprecated('Use getItemOwnersResponseDescriptor instead')
const GetItemOwnersResponse$json = const {
  '1': 'GetItemOwnersResponse',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'owners', '3': 2, '4': 3, '5': 11, '6': '.fairtreat.User', '10': 'owners'},
  ],
};

/// Descriptor for `GetItemOwnersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getItemOwnersResponseDescriptor = $convert.base64Decode('ChVHZXRJdGVtT3duZXJzUmVzcG9uc2USFAoFY291bnQYASABKAVSBWNvdW50EicKBm93bmVycxgCIAMoCzIPLmZhaXJ0cmVhdC5Vc2VyUgZvd25lcnM=');
