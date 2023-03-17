///
//  Generated code. Do not modify.
//  source: lib/grpc/protos/warikan.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'warikan.pb.dart' as $0;
export 'warikan.pb.dart';

class WarikanClient extends $grpc.Client {
  static final _$createBill =
      $grpc.ClientMethod<$0.CreateBillRequest, $0.CreateBillResponse>(
          '/warikan.Warikan/CreateBill',
          ($0.CreateBillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateBillResponse.fromBuffer(value));
  static final _$connectBill =
      $grpc.ClientMethod<$0.ConnectBillRequest, $0.ConnectBillResponse>(
          '/warikan.Warikan/ConnectBill',
          ($0.ConnectBillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ConnectBillResponse.fromBuffer(value));
  static final _$confirmBill =
      $grpc.ClientMethod<$0.ConfirmBillRequest, $0.ConfirmBillResponse>(
          '/warikan.Warikan/ConfirmBill',
          ($0.ConfirmBillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ConfirmBillResponse.fromBuffer(value));
  static final _$addUser =
      $grpc.ClientMethod<$0.AddUserRequest, $0.AddUserResponse>(
          '/warikan.Warikan/AddUser',
          ($0.AddUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddUserResponse.fromBuffer(value));
  static final _$removeUser =
      $grpc.ClientMethod<$0.RemoveUserRequest, $0.RemoveUserResponse>(
          '/warikan.Warikan/RemoveUser',
          ($0.RemoveUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RemoveUserResponse.fromBuffer(value));
  static final _$getUsersList =
      $grpc.ClientMethod<$0.GetUsersListRequest, $0.GetUsersListResponse>(
          '/warikan.Warikan/GetUsersList',
          ($0.GetUsersListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetUsersListResponse.fromBuffer(value));
  static final _$setItems =
      $grpc.ClientMethod<$0.SetItemsRequest, $0.SetItemsResponse>(
          '/warikan.Warikan/SetItems',
          ($0.SetItemsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SetItemsResponse.fromBuffer(value));
  static final _$addItem =
      $grpc.ClientMethod<$0.AddItemRequest, $0.AddItemResponse>(
          '/warikan.Warikan/AddItem',
          ($0.AddItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddItemResponse.fromBuffer(value));
  static final _$removeItem =
      $grpc.ClientMethod<$0.RemoveItemRequest, $0.RemoveItemResponse>(
          '/warikan.Warikan/RemoveItem',
          ($0.RemoveItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RemoveItemResponse.fromBuffer(value));
  static final _$getItemsList =
      $grpc.ClientMethod<$0.GetItemsListRequest, $0.GetItemsListResponse>(
          '/warikan.Warikan/GetItemsList',
          ($0.GetItemsListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetItemsListResponse.fromBuffer(value));
  static final _$getItem =
      $grpc.ClientMethod<$0.GetItemRequest, $0.GetItemResponse>(
          '/warikan.Warikan/GetItem',
          ($0.GetItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetItemResponse.fromBuffer(value));
  static final _$setItemOwners =
      $grpc.ClientMethod<$0.SetItemOwnersRequest, $0.SetItemOwnersResponse>(
          '/warikan.Warikan/SetItemOwners',
          ($0.SetItemOwnersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SetItemOwnersResponse.fromBuffer(value));
  static final _$addItemOwner =
      $grpc.ClientMethod<$0.AddItemOwnerRequest, $0.AddItemOwnerResponse>(
          '/warikan.Warikan/AddItemOwner',
          ($0.AddItemOwnerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddItemOwnerResponse.fromBuffer(value));
  static final _$removeItemOwner =
      $grpc.ClientMethod<$0.RemoveItemOwnerRequest, $0.RemoveItemOwnerResponse>(
          '/warikan.Warikan/RemoveItemOwner',
          ($0.RemoveItemOwnerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RemoveItemOwnerResponse.fromBuffer(value));
  static final _$getItemOwners =
      $grpc.ClientMethod<$0.GetItemOwnersRequest, $0.GetItemOwnersResponse>(
          '/warikan.Warikan/GetItemOwners',
          ($0.GetItemOwnersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetItemOwnersResponse.fromBuffer(value));

  WarikanClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateBillResponse> createBill(
      $0.CreateBillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBill, request, options: options);
  }

  $grpc.ResponseStream<$0.ConnectBillResponse> connectBill(
      $0.ConnectBillRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$connectBill, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.ConfirmBillResponse> confirmBill(
      $0.ConfirmBillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$confirmBill, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddUserResponse> addUser($0.AddUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveUserResponse> removeUser(
      $0.RemoveUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetUsersListResponse> getUsersList(
      $0.GetUsersListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUsersList, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetItemsResponse> setItems($0.SetItemsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setItems, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddItemResponse> addItem($0.AddItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveItemResponse> removeItem(
      $0.RemoveItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetItemsListResponse> getItemsList(
      $0.GetItemsListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItemsList, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetItemResponse> getItem($0.GetItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItem, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetItemOwnersResponse> setItemOwners(
      $0.SetItemOwnersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setItemOwners, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddItemOwnerResponse> addItemOwner(
      $0.AddItemOwnerRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addItemOwner, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveItemOwnerResponse> removeItemOwner(
      $0.RemoveItemOwnerRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeItemOwner, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetItemOwnersResponse> getItemOwners(
      $0.GetItemOwnersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItemOwners, request, options: options);
  }
}

abstract class WarikanServiceBase extends $grpc.Service {
  $core.String get $name => 'warikan.Warikan';

  WarikanServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateBillRequest, $0.CreateBillResponse>(
        'CreateBill',
        createBill_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateBillRequest.fromBuffer(value),
        ($0.CreateBillResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ConnectBillRequest, $0.ConnectBillResponse>(
            'ConnectBill',
            connectBill_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $0.ConnectBillRequest.fromBuffer(value),
            ($0.ConnectBillResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ConfirmBillRequest, $0.ConfirmBillResponse>(
            'ConfirmBill',
            confirmBill_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ConfirmBillRequest.fromBuffer(value),
            ($0.ConfirmBillResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddUserRequest, $0.AddUserResponse>(
        'AddUser',
        addUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddUserRequest.fromBuffer(value),
        ($0.AddUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveUserRequest, $0.RemoveUserResponse>(
        'RemoveUser',
        removeUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RemoveUserRequest.fromBuffer(value),
        ($0.RemoveUserResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetUsersListRequest, $0.GetUsersListResponse>(
            'GetUsersList',
            getUsersList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetUsersListRequest.fromBuffer(value),
            ($0.GetUsersListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetItemsRequest, $0.SetItemsResponse>(
        'SetItems',
        setItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetItemsRequest.fromBuffer(value),
        ($0.SetItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddItemRequest, $0.AddItemResponse>(
        'AddItem',
        addItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddItemRequest.fromBuffer(value),
        ($0.AddItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveItemRequest, $0.RemoveItemResponse>(
        'RemoveItem',
        removeItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RemoveItemRequest.fromBuffer(value),
        ($0.RemoveItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetItemsListRequest, $0.GetItemsListResponse>(
            'GetItemsList',
            getItemsList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetItemsListRequest.fromBuffer(value),
            ($0.GetItemsListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetItemRequest, $0.GetItemResponse>(
        'GetItem',
        getItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetItemRequest.fromBuffer(value),
        ($0.GetItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.SetItemOwnersRequest, $0.SetItemOwnersResponse>(
            'SetItemOwners',
            setItemOwners_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SetItemOwnersRequest.fromBuffer(value),
            ($0.SetItemOwnersResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AddItemOwnerRequest, $0.AddItemOwnerResponse>(
            'AddItemOwner',
            addItemOwner_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AddItemOwnerRequest.fromBuffer(value),
            ($0.AddItemOwnerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveItemOwnerRequest,
            $0.RemoveItemOwnerResponse>(
        'RemoveItemOwner',
        removeItemOwner_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RemoveItemOwnerRequest.fromBuffer(value),
        ($0.RemoveItemOwnerResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetItemOwnersRequest, $0.GetItemOwnersResponse>(
            'GetItemOwners',
            getItemOwners_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetItemOwnersRequest.fromBuffer(value),
            ($0.GetItemOwnersResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateBillResponse> createBill_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateBillRequest> request) async {
    return createBill(call, await request);
  }

  $async.Stream<$0.ConnectBillResponse> connectBill_Pre($grpc.ServiceCall call,
      $async.Future<$0.ConnectBillRequest> request) async* {
    yield* connectBill(call, await request);
  }

  $async.Future<$0.ConfirmBillResponse> confirmBill_Pre($grpc.ServiceCall call,
      $async.Future<$0.ConfirmBillRequest> request) async {
    return confirmBill(call, await request);
  }

  $async.Future<$0.AddUserResponse> addUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddUserRequest> request) async {
    return addUser(call, await request);
  }

  $async.Future<$0.RemoveUserResponse> removeUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.RemoveUserRequest> request) async {
    return removeUser(call, await request);
  }

  $async.Future<$0.GetUsersListResponse> getUsersList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetUsersListRequest> request) async {
    return getUsersList(call, await request);
  }

  $async.Future<$0.SetItemsResponse> setItems_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SetItemsRequest> request) async {
    return setItems(call, await request);
  }

  $async.Future<$0.AddItemResponse> addItem_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddItemRequest> request) async {
    return addItem(call, await request);
  }

  $async.Future<$0.RemoveItemResponse> removeItem_Pre($grpc.ServiceCall call,
      $async.Future<$0.RemoveItemRequest> request) async {
    return removeItem(call, await request);
  }

  $async.Future<$0.GetItemsListResponse> getItemsList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetItemsListRequest> request) async {
    return getItemsList(call, await request);
  }

  $async.Future<$0.GetItemResponse> getItem_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetItemRequest> request) async {
    return getItem(call, await request);
  }

  $async.Future<$0.SetItemOwnersResponse> setItemOwners_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SetItemOwnersRequest> request) async {
    return setItemOwners(call, await request);
  }

  $async.Future<$0.AddItemOwnerResponse> addItemOwner_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AddItemOwnerRequest> request) async {
    return addItemOwner(call, await request);
  }

  $async.Future<$0.RemoveItemOwnerResponse> removeItemOwner_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RemoveItemOwnerRequest> request) async {
    return removeItemOwner(call, await request);
  }

  $async.Future<$0.GetItemOwnersResponse> getItemOwners_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetItemOwnersRequest> request) async {
    return getItemOwners(call, await request);
  }

  $async.Future<$0.CreateBillResponse> createBill(
      $grpc.ServiceCall call, $0.CreateBillRequest request);
  $async.Stream<$0.ConnectBillResponse> connectBill(
      $grpc.ServiceCall call, $0.ConnectBillRequest request);
  $async.Future<$0.ConfirmBillResponse> confirmBill(
      $grpc.ServiceCall call, $0.ConfirmBillRequest request);
  $async.Future<$0.AddUserResponse> addUser(
      $grpc.ServiceCall call, $0.AddUserRequest request);
  $async.Future<$0.RemoveUserResponse> removeUser(
      $grpc.ServiceCall call, $0.RemoveUserRequest request);
  $async.Future<$0.GetUsersListResponse> getUsersList(
      $grpc.ServiceCall call, $0.GetUsersListRequest request);
  $async.Future<$0.SetItemsResponse> setItems(
      $grpc.ServiceCall call, $0.SetItemsRequest request);
  $async.Future<$0.AddItemResponse> addItem(
      $grpc.ServiceCall call, $0.AddItemRequest request);
  $async.Future<$0.RemoveItemResponse> removeItem(
      $grpc.ServiceCall call, $0.RemoveItemRequest request);
  $async.Future<$0.GetItemsListResponse> getItemsList(
      $grpc.ServiceCall call, $0.GetItemsListRequest request);
  $async.Future<$0.GetItemResponse> getItem(
      $grpc.ServiceCall call, $0.GetItemRequest request);
  $async.Future<$0.SetItemOwnersResponse> setItemOwners(
      $grpc.ServiceCall call, $0.SetItemOwnersRequest request);
  $async.Future<$0.AddItemOwnerResponse> addItemOwner(
      $grpc.ServiceCall call, $0.AddItemOwnerRequest request);
  $async.Future<$0.RemoveItemOwnerResponse> removeItemOwner(
      $grpc.ServiceCall call, $0.RemoveItemOwnerRequest request);
  $async.Future<$0.GetItemOwnersResponse> getItemOwners(
      $grpc.ServiceCall call, $0.GetItemOwnersRequest request);
}
