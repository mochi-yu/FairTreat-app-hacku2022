///
//  Generated code. Do not modify.
//  source: lib/grpc/protos/fairtreat.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'fairtreat.pb.dart' as $0;
export 'fairtreat.pb.dart';

class FairTreatClient extends $grpc.Client {
  static final _$createBill =
      $grpc.ClientMethod<$0.CreateBillRequest, $0.CreateBillResponse>(
          '/fairtreat.FairTreat/CreateBill',
          ($0.CreateBillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateBillResponse.fromBuffer(value));
  static final _$getBill =
      $grpc.ClientMethod<$0.GetBillRequest, $0.GetBillResponse>(
          '/fairtreat.FairTreat/GetBill',
          ($0.GetBillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetBillResponse.fromBuffer(value));
  static final _$connectBill =
      $grpc.ClientMethod<$0.ConnectBillRequest, $0.ConnectBillResponse>(
          '/fairtreat.FairTreat/ConnectBill',
          ($0.ConnectBillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ConnectBillResponse.fromBuffer(value));
  static final _$confirmBill =
      $grpc.ClientMethod<$0.ConfirmBillRequest, $0.ConfirmBillResponse>(
          '/fairtreat.FairTreat/ConfirmBill',
          ($0.ConfirmBillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ConfirmBillResponse.fromBuffer(value));
  static final _$getConfirmBill =
      $grpc.ClientMethod<$0.GetConfirmBillRequest, $0.GetConfirmBillResponse>(
          '/fairtreat.FairTreat/GetConfirmBill',
          ($0.GetConfirmBillRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetConfirmBillResponse.fromBuffer(value));
  static final _$addUser =
      $grpc.ClientMethod<$0.AddUserRequest, $0.AddUserResponse>(
          '/fairtreat.FairTreat/AddUser',
          ($0.AddUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddUserResponse.fromBuffer(value));
  static final _$getUsersList =
      $grpc.ClientMethod<$0.GetUsersListRequest, $0.GetUsersListResponse>(
          '/fairtreat.FairTreat/GetUsersList',
          ($0.GetUsersListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetUsersListResponse.fromBuffer(value));
  static final _$getItemsList =
      $grpc.ClientMethod<$0.GetItemsListRequest, $0.GetItemsListResponse>(
          '/fairtreat.FairTreat/GetItemsList',
          ($0.GetItemsListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetItemsListResponse.fromBuffer(value));
  static final _$setOwners =
      $grpc.ClientMethod<$0.SetItemOwnerRequest, $0.SetItemOwnerResponse>(
          '/fairtreat.FairTreat/SetOwners',
          ($0.SetItemOwnerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SetItemOwnerResponse.fromBuffer(value));
  static final _$getItemOwnersList =
      $grpc.ClientMethod<$0.GetItemOwnersRequest, $0.GetItemOwnersResponse>(
          '/fairtreat.FairTreat/GetItemOwnersList',
          ($0.GetItemOwnersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetItemOwnersResponse.fromBuffer(value));

  FairTreatClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateBillResponse> createBill(
      $0.CreateBillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBill, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBillResponse> getBill($0.GetBillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBill, request, options: options);
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

  $grpc.ResponseFuture<$0.GetConfirmBillResponse> getConfirmBill(
      $0.GetConfirmBillRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getConfirmBill, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddUserResponse> addUser($0.AddUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetUsersListResponse> getUsersList(
      $0.GetUsersListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUsersList, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetItemsListResponse> getItemsList(
      $0.GetItemsListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItemsList, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetItemOwnerResponse> setOwners(
      $0.SetItemOwnerRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setOwners, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetItemOwnersResponse> getItemOwnersList(
      $0.GetItemOwnersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getItemOwnersList, request, options: options);
  }
}

abstract class FairTreatServiceBase extends $grpc.Service {
  $core.String get $name => 'fairtreat.FairTreat';

  FairTreatServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateBillRequest, $0.CreateBillResponse>(
        'CreateBill',
        createBill_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateBillRequest.fromBuffer(value),
        ($0.CreateBillResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetBillRequest, $0.GetBillResponse>(
        'GetBill',
        getBill_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetBillRequest.fromBuffer(value),
        ($0.GetBillResponse value) => value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$0.GetConfirmBillRequest,
            $0.GetConfirmBillResponse>(
        'GetConfirmBill',
        getConfirmBill_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetConfirmBillRequest.fromBuffer(value),
        ($0.GetConfirmBillResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddUserRequest, $0.AddUserResponse>(
        'AddUser',
        addUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddUserRequest.fromBuffer(value),
        ($0.AddUserResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetUsersListRequest, $0.GetUsersListResponse>(
            'GetUsersList',
            getUsersList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetUsersListRequest.fromBuffer(value),
            ($0.GetUsersListResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetItemsListRequest, $0.GetItemsListResponse>(
            'GetItemsList',
            getItemsList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetItemsListRequest.fromBuffer(value),
            ($0.GetItemsListResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.SetItemOwnerRequest, $0.SetItemOwnerResponse>(
            'SetOwners',
            setOwners_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SetItemOwnerRequest.fromBuffer(value),
            ($0.SetItemOwnerResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetItemOwnersRequest, $0.GetItemOwnersResponse>(
            'GetItemOwnersList',
            getItemOwnersList_Pre,
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

  $async.Future<$0.GetBillResponse> getBill_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetBillRequest> request) async {
    return getBill(call, await request);
  }

  $async.Stream<$0.ConnectBillResponse> connectBill_Pre($grpc.ServiceCall call,
      $async.Future<$0.ConnectBillRequest> request) async* {
    yield* connectBill(call, await request);
  }

  $async.Future<$0.ConfirmBillResponse> confirmBill_Pre($grpc.ServiceCall call,
      $async.Future<$0.ConfirmBillRequest> request) async {
    return confirmBill(call, await request);
  }

  $async.Future<$0.GetConfirmBillResponse> getConfirmBill_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetConfirmBillRequest> request) async {
    return getConfirmBill(call, await request);
  }

  $async.Future<$0.AddUserResponse> addUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddUserRequest> request) async {
    return addUser(call, await request);
  }

  $async.Future<$0.GetUsersListResponse> getUsersList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetUsersListRequest> request) async {
    return getUsersList(call, await request);
  }

  $async.Future<$0.GetItemsListResponse> getItemsList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetItemsListRequest> request) async {
    return getItemsList(call, await request);
  }

  $async.Future<$0.SetItemOwnerResponse> setOwners_Pre($grpc.ServiceCall call,
      $async.Future<$0.SetItemOwnerRequest> request) async {
    return setOwners(call, await request);
  }

  $async.Future<$0.GetItemOwnersResponse> getItemOwnersList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetItemOwnersRequest> request) async {
    return getItemOwnersList(call, await request);
  }

  $async.Future<$0.CreateBillResponse> createBill(
      $grpc.ServiceCall call, $0.CreateBillRequest request);
  $async.Future<$0.GetBillResponse> getBill(
      $grpc.ServiceCall call, $0.GetBillRequest request);
  $async.Stream<$0.ConnectBillResponse> connectBill(
      $grpc.ServiceCall call, $0.ConnectBillRequest request);
  $async.Future<$0.ConfirmBillResponse> confirmBill(
      $grpc.ServiceCall call, $0.ConfirmBillRequest request);
  $async.Future<$0.GetConfirmBillResponse> getConfirmBill(
      $grpc.ServiceCall call, $0.GetConfirmBillRequest request);
  $async.Future<$0.AddUserResponse> addUser(
      $grpc.ServiceCall call, $0.AddUserRequest request);
  $async.Future<$0.GetUsersListResponse> getUsersList(
      $grpc.ServiceCall call, $0.GetUsersListRequest request);
  $async.Future<$0.GetItemsListResponse> getItemsList(
      $grpc.ServiceCall call, $0.GetItemsListRequest request);
  $async.Future<$0.SetItemOwnerResponse> setOwners(
      $grpc.ServiceCall call, $0.SetItemOwnerRequest request);
  $async.Future<$0.GetItemOwnersResponse> getItemOwnersList(
      $grpc.ServiceCall call, $0.GetItemOwnersRequest request);
}
