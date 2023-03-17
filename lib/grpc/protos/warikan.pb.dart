///
//  Generated code. Do not modify.
//  source: lib/grpc/protos/warikan.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'warikan.pbenum.dart';

export 'warikan.pbenum.dart';

class Bill extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Bill', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOM<User>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'host', subBuilder: User.create)
    ..pc<User>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guests', $pb.PbFieldType.PM, subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  Bill._() : super();
  factory Bill({
    $core.String? id,
    $core.String? password,
    User? host,
    $core.Iterable<User>? guests,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (password != null) {
      _result.password = password;
    }
    if (host != null) {
      _result.host = host;
    }
    if (guests != null) {
      _result.guests.addAll(guests);
    }
    return _result;
  }
  factory Bill.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Bill.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Bill clone() => Bill()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Bill copyWith(void Function(Bill) updates) => super.copyWith((message) => updates(message as Bill)) as Bill; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Bill create() => Bill._();
  Bill createEmptyInstance() => create();
  static $pb.PbList<Bill> createRepeated() => $pb.PbList<Bill>();
  @$core.pragma('dart2js:noInline')
  static Bill getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Bill>(create);
  static Bill? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  User get host => $_getN(2);
  @$pb.TagNumber(3)
  set host(User v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHost() => $_has(2);
  @$pb.TagNumber(3)
  void clearHost() => clearField(3);
  @$pb.TagNumber(3)
  User ensureHost() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<User> get guests => $_getList(3);
}

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'User', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User({
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
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

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

class Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Item', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.O3)
    ..pc<User>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owners', $pb.PbFieldType.PM, subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  Item._() : super();
  factory Item({
    $core.int? id,
    $core.String? name,
    $core.int? amount,
    $core.int? price,
    $core.Iterable<User>? owners,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (price != null) {
      _result.price = price;
    }
    if (owners != null) {
      _result.owners.addAll(owners);
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
  $core.int get amount => $_getIZ(2);
  @$pb.TagNumber(3)
  set amount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get price => $_getIZ(3);
  @$pb.TagNumber(4)
  set price($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<User> get owners => $_getList(4);
}

class CreateBillRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateBillRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOM<User>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'host', subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  CreateBillRequest._() : super();
  factory CreateBillRequest({
    User? host,
  }) {
    final _result = create();
    if (host != null) {
      _result.host = host;
    }
    return _result;
  }
  factory CreateBillRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateBillRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateBillRequest clone() => CreateBillRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateBillRequest copyWith(void Function(CreateBillRequest) updates) => super.copyWith((message) => updates(message as CreateBillRequest)) as CreateBillRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateBillRequest create() => CreateBillRequest._();
  CreateBillRequest createEmptyInstance() => create();
  static $pb.PbList<CreateBillRequest> createRepeated() => $pb.PbList<CreateBillRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateBillRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateBillRequest>(create);
  static CreateBillRequest? _defaultInstance;

  @$pb.TagNumber(1)
  User get host => $_getN(0);
  @$pb.TagNumber(1)
  set host(User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHost() => $_has(0);
  @$pb.TagNumber(1)
  void clearHost() => clearField(1);
  @$pb.TagNumber(1)
  User ensureHost() => $_ensure(0);
}

class CreateBillResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateBillResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOM<Bill>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill', subBuilder: Bill.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerPassword', protoName: 'ownerPassword')
    ..hasRequiredFields = false
  ;

  CreateBillResponse._() : super();
  factory CreateBillResponse({
    Bill? bill,
    $core.String? ownerPassword,
  }) {
    final _result = create();
    if (bill != null) {
      _result.bill = bill;
    }
    if (ownerPassword != null) {
      _result.ownerPassword = ownerPassword;
    }
    return _result;
  }
  factory CreateBillResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateBillResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateBillResponse clone() => CreateBillResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateBillResponse copyWith(void Function(CreateBillResponse) updates) => super.copyWith((message) => updates(message as CreateBillResponse)) as CreateBillResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateBillResponse create() => CreateBillResponse._();
  CreateBillResponse createEmptyInstance() => create();
  static $pb.PbList<CreateBillResponse> createRepeated() => $pb.PbList<CreateBillResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateBillResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateBillResponse>(create);
  static CreateBillResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Bill get bill => $_getN(0);
  @$pb.TagNumber(1)
  set bill(Bill v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBill() => $_has(0);
  @$pb.TagNumber(1)
  void clearBill() => clearField(1);
  @$pb.TagNumber(1)
  Bill ensureBill() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get ownerPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwnerPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerPassword() => clearField(2);
}

class ConnectBillRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectBillRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOM<Bill>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill', subBuilder: Bill.create)
    ..hasRequiredFields = false
  ;

  ConnectBillRequest._() : super();
  factory ConnectBillRequest({
    Bill? bill,
  }) {
    final _result = create();
    if (bill != null) {
      _result.bill = bill;
    }
    return _result;
  }
  factory ConnectBillRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectBillRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectBillRequest clone() => ConnectBillRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectBillRequest copyWith(void Function(ConnectBillRequest) updates) => super.copyWith((message) => updates(message as ConnectBillRequest)) as ConnectBillRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectBillRequest create() => ConnectBillRequest._();
  ConnectBillRequest createEmptyInstance() => create();
  static $pb.PbList<ConnectBillRequest> createRepeated() => $pb.PbList<ConnectBillRequest>();
  @$core.pragma('dart2js:noInline')
  static ConnectBillRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectBillRequest>(create);
  static ConnectBillRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Bill get bill => $_getN(0);
  @$pb.TagNumber(1)
  set bill(Bill v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBill() => $_has(0);
  @$pb.TagNumber(1)
  void clearBill() => clearField(1);
  @$pb.TagNumber(1)
  Bill ensureBill() => $_ensure(0);
}

class ConnectBillResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectBillResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..e<BILL_CHANGE_TYPE>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: BILL_CHANGE_TYPE.OWNER, valueOf: BILL_CHANGE_TYPE.valueOf, enumValues: BILL_CHANGE_TYPE.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ConnectBillResponse._() : super();
  factory ConnectBillResponse({
    BILL_CHANGE_TYPE? type,
    $core.int? id,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory ConnectBillResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectBillResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectBillResponse clone() => ConnectBillResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectBillResponse copyWith(void Function(ConnectBillResponse) updates) => super.copyWith((message) => updates(message as ConnectBillResponse)) as ConnectBillResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectBillResponse create() => ConnectBillResponse._();
  ConnectBillResponse createEmptyInstance() => create();
  static $pb.PbList<ConnectBillResponse> createRepeated() => $pb.PbList<ConnectBillResponse>();
  @$core.pragma('dart2js:noInline')
  static ConnectBillResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectBillResponse>(create);
  static ConnectBillResponse? _defaultInstance;

  @$pb.TagNumber(1)
  BILL_CHANGE_TYPE get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(BILL_CHANGE_TYPE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class ConfirmBillRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConfirmBillRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOM<Bill>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill', subBuilder: Bill.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerPassword', protoName: 'ownerPassword')
    ..hasRequiredFields = false
  ;

  ConfirmBillRequest._() : super();
  factory ConfirmBillRequest({
    Bill? bill,
    $core.String? ownerPassword,
  }) {
    final _result = create();
    if (bill != null) {
      _result.bill = bill;
    }
    if (ownerPassword != null) {
      _result.ownerPassword = ownerPassword;
    }
    return _result;
  }
  factory ConfirmBillRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfirmBillRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConfirmBillRequest clone() => ConfirmBillRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConfirmBillRequest copyWith(void Function(ConfirmBillRequest) updates) => super.copyWith((message) => updates(message as ConfirmBillRequest)) as ConfirmBillRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConfirmBillRequest create() => ConfirmBillRequest._();
  ConfirmBillRequest createEmptyInstance() => create();
  static $pb.PbList<ConfirmBillRequest> createRepeated() => $pb.PbList<ConfirmBillRequest>();
  @$core.pragma('dart2js:noInline')
  static ConfirmBillRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfirmBillRequest>(create);
  static ConfirmBillRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Bill get bill => $_getN(0);
  @$pb.TagNumber(1)
  set bill(Bill v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBill() => $_has(0);
  @$pb.TagNumber(1)
  void clearBill() => clearField(1);
  @$pb.TagNumber(1)
  Bill ensureBill() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get ownerPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwnerPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerPassword() => clearField(2);
}

class ConfirmBillResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConfirmBillResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  ConfirmBillResponse._() : super();
  factory ConfirmBillResponse({
    $core.bool? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory ConfirmBillResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfirmBillResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConfirmBillResponse clone() => ConfirmBillResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConfirmBillResponse copyWith(void Function(ConfirmBillResponse) updates) => super.copyWith((message) => updates(message as ConfirmBillResponse)) as ConfirmBillResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConfirmBillResponse create() => ConfirmBillResponse._();
  ConfirmBillResponse createEmptyInstance() => create();
  static $pb.PbList<ConfirmBillResponse> createRepeated() => $pb.PbList<ConfirmBillResponse>();
  @$core.pragma('dart2js:noInline')
  static ConfirmBillResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfirmBillResponse>(create);
  static ConfirmBillResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class AddUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddUserRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOM<Bill>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill', subBuilder: Bill.create)
    ..aOM<User>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'user', subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  AddUserRequest._() : super();
  factory AddUserRequest({
    Bill? bill,
    User? user,
  }) {
    final _result = create();
    if (bill != null) {
      _result.bill = bill;
    }
    if (user != null) {
      _result.user = user;
    }
    return _result;
  }
  factory AddUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddUserRequest clone() => AddUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddUserRequest copyWith(void Function(AddUserRequest) updates) => super.copyWith((message) => updates(message as AddUserRequest)) as AddUserRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddUserRequest create() => AddUserRequest._();
  AddUserRequest createEmptyInstance() => create();
  static $pb.PbList<AddUserRequest> createRepeated() => $pb.PbList<AddUserRequest>();
  @$core.pragma('dart2js:noInline')
  static AddUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddUserRequest>(create);
  static AddUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Bill get bill => $_getN(0);
  @$pb.TagNumber(1)
  set bill(Bill v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBill() => $_has(0);
  @$pb.TagNumber(1)
  void clearBill() => clearField(1);
  @$pb.TagNumber(1)
  Bill ensureBill() => $_ensure(0);

  @$pb.TagNumber(2)
  User get user => $_getN(1);
  @$pb.TagNumber(2)
  set user(User v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  User ensureUser() => $_ensure(1);
}

class AddUserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddUserResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  AddUserResponse._() : super();
  factory AddUserResponse({
    $core.bool? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory AddUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddUserResponse clone() => AddUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddUserResponse copyWith(void Function(AddUserResponse) updates) => super.copyWith((message) => updates(message as AddUserResponse)) as AddUserResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddUserResponse create() => AddUserResponse._();
  AddUserResponse createEmptyInstance() => create();
  static $pb.PbList<AddUserResponse> createRepeated() => $pb.PbList<AddUserResponse>();
  @$core.pragma('dart2js:noInline')
  static AddUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddUserResponse>(create);
  static AddUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class RemoveUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveUserRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOM<Bill>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill', subBuilder: Bill.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hostPassword', protoName: 'hostPassword')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..hasRequiredFields = false
  ;

  RemoveUserRequest._() : super();
  factory RemoveUserRequest({
    Bill? bill,
    $core.String? hostPassword,
    $core.int? userId,
  }) {
    final _result = create();
    if (bill != null) {
      _result.bill = bill;
    }
    if (hostPassword != null) {
      _result.hostPassword = hostPassword;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory RemoveUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveUserRequest clone() => RemoveUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveUserRequest copyWith(void Function(RemoveUserRequest) updates) => super.copyWith((message) => updates(message as RemoveUserRequest)) as RemoveUserRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveUserRequest create() => RemoveUserRequest._();
  RemoveUserRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveUserRequest> createRepeated() => $pb.PbList<RemoveUserRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveUserRequest>(create);
  static RemoveUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Bill get bill => $_getN(0);
  @$pb.TagNumber(1)
  set bill(Bill v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBill() => $_has(0);
  @$pb.TagNumber(1)
  void clearBill() => clearField(1);
  @$pb.TagNumber(1)
  Bill ensureBill() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get hostPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set hostPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHostPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearHostPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get userId => $_getIZ(2);
  @$pb.TagNumber(3)
  set userId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);
}

class RemoveUserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveUserResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  RemoveUserResponse._() : super();
  factory RemoveUserResponse({
    $core.bool? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory RemoveUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveUserResponse clone() => RemoveUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveUserResponse copyWith(void Function(RemoveUserResponse) updates) => super.copyWith((message) => updates(message as RemoveUserResponse)) as RemoveUserResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveUserResponse create() => RemoveUserResponse._();
  RemoveUserResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveUserResponse> createRepeated() => $pb.PbList<RemoveUserResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveUserResponse>(create);
  static RemoveUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class GetUsersListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUsersListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOM<Bill>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill', subBuilder: Bill.create)
    ..hasRequiredFields = false
  ;

  GetUsersListRequest._() : super();
  factory GetUsersListRequest({
    Bill? bill,
  }) {
    final _result = create();
    if (bill != null) {
      _result.bill = bill;
    }
    return _result;
  }
  factory GetUsersListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUsersListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUsersListRequest clone() => GetUsersListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUsersListRequest copyWith(void Function(GetUsersListRequest) updates) => super.copyWith((message) => updates(message as GetUsersListRequest)) as GetUsersListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUsersListRequest create() => GetUsersListRequest._();
  GetUsersListRequest createEmptyInstance() => create();
  static $pb.PbList<GetUsersListRequest> createRepeated() => $pb.PbList<GetUsersListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetUsersListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUsersListRequest>(create);
  static GetUsersListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Bill get bill => $_getN(0);
  @$pb.TagNumber(1)
  set bill(Bill v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBill() => $_has(0);
  @$pb.TagNumber(1)
  void clearBill() => clearField(1);
  @$pb.TagNumber(1)
  Bill ensureBill() => $_ensure(0);
}

class GetUsersListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUsersListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.O3)
    ..pc<User>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'users', $pb.PbFieldType.PM, subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  GetUsersListResponse._() : super();
  factory GetUsersListResponse({
    $core.int? count,
    $core.Iterable<User>? users,
  }) {
    final _result = create();
    if (count != null) {
      _result.count = count;
    }
    if (users != null) {
      _result.users.addAll(users);
    }
    return _result;
  }
  factory GetUsersListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUsersListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUsersListResponse clone() => GetUsersListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUsersListResponse copyWith(void Function(GetUsersListResponse) updates) => super.copyWith((message) => updates(message as GetUsersListResponse)) as GetUsersListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUsersListResponse create() => GetUsersListResponse._();
  GetUsersListResponse createEmptyInstance() => create();
  static $pb.PbList<GetUsersListResponse> createRepeated() => $pb.PbList<GetUsersListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetUsersListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUsersListResponse>(create);
  static GetUsersListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<User> get users => $_getList(1);
}

class SetItemsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetItemsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOM<Bill>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill', subBuilder: Bill.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerPassword', protoName: 'ownerPassword')
    ..pc<Item>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Item.create)
    ..hasRequiredFields = false
  ;

  SetItemsRequest._() : super();
  factory SetItemsRequest({
    Bill? bill,
    $core.String? ownerPassword,
    $core.Iterable<Item>? items,
  }) {
    final _result = create();
    if (bill != null) {
      _result.bill = bill;
    }
    if (ownerPassword != null) {
      _result.ownerPassword = ownerPassword;
    }
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory SetItemsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetItemsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetItemsRequest clone() => SetItemsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetItemsRequest copyWith(void Function(SetItemsRequest) updates) => super.copyWith((message) => updates(message as SetItemsRequest)) as SetItemsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetItemsRequest create() => SetItemsRequest._();
  SetItemsRequest createEmptyInstance() => create();
  static $pb.PbList<SetItemsRequest> createRepeated() => $pb.PbList<SetItemsRequest>();
  @$core.pragma('dart2js:noInline')
  static SetItemsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetItemsRequest>(create);
  static SetItemsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Bill get bill => $_getN(0);
  @$pb.TagNumber(1)
  set bill(Bill v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBill() => $_has(0);
  @$pb.TagNumber(1)
  void clearBill() => clearField(1);
  @$pb.TagNumber(1)
  Bill ensureBill() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get ownerPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwnerPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Item> get items => $_getList(2);
}

class SetItemsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetItemsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  SetItemsResponse._() : super();
  factory SetItemsResponse({
    $core.bool? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory SetItemsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetItemsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetItemsResponse clone() => SetItemsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetItemsResponse copyWith(void Function(SetItemsResponse) updates) => super.copyWith((message) => updates(message as SetItemsResponse)) as SetItemsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetItemsResponse create() => SetItemsResponse._();
  SetItemsResponse createEmptyInstance() => create();
  static $pb.PbList<SetItemsResponse> createRepeated() => $pb.PbList<SetItemsResponse>();
  @$core.pragma('dart2js:noInline')
  static SetItemsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetItemsResponse>(create);
  static SetItemsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class AddItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddItemRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOM<Bill>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill', subBuilder: Bill.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerPassword', protoName: 'ownerPassword')
    ..aOM<Item>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'item', subBuilder: Item.create)
    ..hasRequiredFields = false
  ;

  AddItemRequest._() : super();
  factory AddItemRequest({
    Bill? bill,
    $core.String? ownerPassword,
    Item? item,
  }) {
    final _result = create();
    if (bill != null) {
      _result.bill = bill;
    }
    if (ownerPassword != null) {
      _result.ownerPassword = ownerPassword;
    }
    if (item != null) {
      _result.item = item;
    }
    return _result;
  }
  factory AddItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddItemRequest clone() => AddItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddItemRequest copyWith(void Function(AddItemRequest) updates) => super.copyWith((message) => updates(message as AddItemRequest)) as AddItemRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddItemRequest create() => AddItemRequest._();
  AddItemRequest createEmptyInstance() => create();
  static $pb.PbList<AddItemRequest> createRepeated() => $pb.PbList<AddItemRequest>();
  @$core.pragma('dart2js:noInline')
  static AddItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddItemRequest>(create);
  static AddItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Bill get bill => $_getN(0);
  @$pb.TagNumber(1)
  set bill(Bill v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBill() => $_has(0);
  @$pb.TagNumber(1)
  void clearBill() => clearField(1);
  @$pb.TagNumber(1)
  Bill ensureBill() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get ownerPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwnerPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerPassword() => clearField(2);

  @$pb.TagNumber(3)
  Item get item => $_getN(2);
  @$pb.TagNumber(3)
  set item(Item v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasItem() => $_has(2);
  @$pb.TagNumber(3)
  void clearItem() => clearField(3);
  @$pb.TagNumber(3)
  Item ensureItem() => $_ensure(2);
}

class AddItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddItemResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  AddItemResponse._() : super();
  factory AddItemResponse({
    $core.bool? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory AddItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddItemResponse clone() => AddItemResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddItemResponse copyWith(void Function(AddItemResponse) updates) => super.copyWith((message) => updates(message as AddItemResponse)) as AddItemResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddItemResponse create() => AddItemResponse._();
  AddItemResponse createEmptyInstance() => create();
  static $pb.PbList<AddItemResponse> createRepeated() => $pb.PbList<AddItemResponse>();
  @$core.pragma('dart2js:noInline')
  static AddItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddItemResponse>(create);
  static AddItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class RemoveItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveItemRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOM<Bill>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill', subBuilder: Bill.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerPassword', protoName: 'ownerPassword')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId', $pb.PbFieldType.O3, protoName: 'itemId')
    ..hasRequiredFields = false
  ;

  RemoveItemRequest._() : super();
  factory RemoveItemRequest({
    Bill? bill,
    $core.String? ownerPassword,
    $core.int? itemId,
  }) {
    final _result = create();
    if (bill != null) {
      _result.bill = bill;
    }
    if (ownerPassword != null) {
      _result.ownerPassword = ownerPassword;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    return _result;
  }
  factory RemoveItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveItemRequest clone() => RemoveItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveItemRequest copyWith(void Function(RemoveItemRequest) updates) => super.copyWith((message) => updates(message as RemoveItemRequest)) as RemoveItemRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveItemRequest create() => RemoveItemRequest._();
  RemoveItemRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveItemRequest> createRepeated() => $pb.PbList<RemoveItemRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveItemRequest>(create);
  static RemoveItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Bill get bill => $_getN(0);
  @$pb.TagNumber(1)
  set bill(Bill v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBill() => $_has(0);
  @$pb.TagNumber(1)
  void clearBill() => clearField(1);
  @$pb.TagNumber(1)
  Bill ensureBill() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get ownerPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwnerPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get itemId => $_getIZ(2);
  @$pb.TagNumber(3)
  set itemId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemId() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemId() => clearField(3);
}

class RemoveItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveItemResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  RemoveItemResponse._() : super();
  factory RemoveItemResponse({
    $core.bool? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory RemoveItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveItemResponse clone() => RemoveItemResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveItemResponse copyWith(void Function(RemoveItemResponse) updates) => super.copyWith((message) => updates(message as RemoveItemResponse)) as RemoveItemResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveItemResponse create() => RemoveItemResponse._();
  RemoveItemResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveItemResponse> createRepeated() => $pb.PbList<RemoveItemResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveItemResponse>(create);
  static RemoveItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class GetItemsListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetItemsListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOM<Bill>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill', subBuilder: Bill.create)
    ..hasRequiredFields = false
  ;

  GetItemsListRequest._() : super();
  factory GetItemsListRequest({
    Bill? bill,
  }) {
    final _result = create();
    if (bill != null) {
      _result.bill = bill;
    }
    return _result;
  }
  factory GetItemsListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetItemsListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetItemsListRequest clone() => GetItemsListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetItemsListRequest copyWith(void Function(GetItemsListRequest) updates) => super.copyWith((message) => updates(message as GetItemsListRequest)) as GetItemsListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetItemsListRequest create() => GetItemsListRequest._();
  GetItemsListRequest createEmptyInstance() => create();
  static $pb.PbList<GetItemsListRequest> createRepeated() => $pb.PbList<GetItemsListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetItemsListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetItemsListRequest>(create);
  static GetItemsListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Bill get bill => $_getN(0);
  @$pb.TagNumber(1)
  set bill(Bill v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBill() => $_has(0);
  @$pb.TagNumber(1)
  void clearBill() => clearField(1);
  @$pb.TagNumber(1)
  Bill ensureBill() => $_ensure(0);
}

class GetItemsListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetItemsListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.O3)
    ..pc<Item>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Item.create)
    ..hasRequiredFields = false
  ;

  GetItemsListResponse._() : super();
  factory GetItemsListResponse({
    $core.int? count,
    $core.Iterable<Item>? items,
  }) {
    final _result = create();
    if (count != null) {
      _result.count = count;
    }
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory GetItemsListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetItemsListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetItemsListResponse clone() => GetItemsListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetItemsListResponse copyWith(void Function(GetItemsListResponse) updates) => super.copyWith((message) => updates(message as GetItemsListResponse)) as GetItemsListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetItemsListResponse create() => GetItemsListResponse._();
  GetItemsListResponse createEmptyInstance() => create();
  static $pb.PbList<GetItemsListResponse> createRepeated() => $pb.PbList<GetItemsListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetItemsListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetItemsListResponse>(create);
  static GetItemsListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Item> get items => $_getList(1);
}

class GetItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetItemRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOM<Bill>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill', subBuilder: Bill.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId', $pb.PbFieldType.O3, protoName: 'itemId')
    ..hasRequiredFields = false
  ;

  GetItemRequest._() : super();
  factory GetItemRequest({
    Bill? bill,
    $core.int? itemId,
  }) {
    final _result = create();
    if (bill != null) {
      _result.bill = bill;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    return _result;
  }
  factory GetItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetItemRequest clone() => GetItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetItemRequest copyWith(void Function(GetItemRequest) updates) => super.copyWith((message) => updates(message as GetItemRequest)) as GetItemRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetItemRequest create() => GetItemRequest._();
  GetItemRequest createEmptyInstance() => create();
  static $pb.PbList<GetItemRequest> createRepeated() => $pb.PbList<GetItemRequest>();
  @$core.pragma('dart2js:noInline')
  static GetItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetItemRequest>(create);
  static GetItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Bill get bill => $_getN(0);
  @$pb.TagNumber(1)
  set bill(Bill v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBill() => $_has(0);
  @$pb.TagNumber(1)
  void clearBill() => clearField(1);
  @$pb.TagNumber(1)
  Bill ensureBill() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get itemId => $_getIZ(1);
  @$pb.TagNumber(2)
  set itemId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemId() => clearField(2);
}

class GetItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetItemResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOM<Item>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'item', subBuilder: Item.create)
    ..hasRequiredFields = false
  ;

  GetItemResponse._() : super();
  factory GetItemResponse({
    Item? item,
  }) {
    final _result = create();
    if (item != null) {
      _result.item = item;
    }
    return _result;
  }
  factory GetItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetItemResponse clone() => GetItemResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetItemResponse copyWith(void Function(GetItemResponse) updates) => super.copyWith((message) => updates(message as GetItemResponse)) as GetItemResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetItemResponse create() => GetItemResponse._();
  GetItemResponse createEmptyInstance() => create();
  static $pb.PbList<GetItemResponse> createRepeated() => $pb.PbList<GetItemResponse>();
  @$core.pragma('dart2js:noInline')
  static GetItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetItemResponse>(create);
  static GetItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Item get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(Item v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => clearField(1);
  @$pb.TagNumber(1)
  Item ensureItem() => $_ensure(0);
}

class SetItemOwnersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetItemOwnersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOM<Bill>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill', subBuilder: Bill.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hostPassword', protoName: 'hostPassword')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId', $pb.PbFieldType.O3, protoName: 'itemId')
    ..pc<User>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owners', $pb.PbFieldType.PM, subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  SetItemOwnersRequest._() : super();
  factory SetItemOwnersRequest({
    Bill? bill,
    $core.String? hostPassword,
    $core.int? itemId,
    $core.Iterable<User>? owners,
  }) {
    final _result = create();
    if (bill != null) {
      _result.bill = bill;
    }
    if (hostPassword != null) {
      _result.hostPassword = hostPassword;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (owners != null) {
      _result.owners.addAll(owners);
    }
    return _result;
  }
  factory SetItemOwnersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetItemOwnersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetItemOwnersRequest clone() => SetItemOwnersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetItemOwnersRequest copyWith(void Function(SetItemOwnersRequest) updates) => super.copyWith((message) => updates(message as SetItemOwnersRequest)) as SetItemOwnersRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetItemOwnersRequest create() => SetItemOwnersRequest._();
  SetItemOwnersRequest createEmptyInstance() => create();
  static $pb.PbList<SetItemOwnersRequest> createRepeated() => $pb.PbList<SetItemOwnersRequest>();
  @$core.pragma('dart2js:noInline')
  static SetItemOwnersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetItemOwnersRequest>(create);
  static SetItemOwnersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Bill get bill => $_getN(0);
  @$pb.TagNumber(1)
  set bill(Bill v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBill() => $_has(0);
  @$pb.TagNumber(1)
  void clearBill() => clearField(1);
  @$pb.TagNumber(1)
  Bill ensureBill() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get hostPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set hostPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHostPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearHostPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get itemId => $_getIZ(2);
  @$pb.TagNumber(3)
  set itemId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemId() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemId() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<User> get owners => $_getList(3);
}

class SetItemOwnersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetItemOwnersResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  SetItemOwnersResponse._() : super();
  factory SetItemOwnersResponse({
    $core.bool? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory SetItemOwnersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetItemOwnersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetItemOwnersResponse clone() => SetItemOwnersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetItemOwnersResponse copyWith(void Function(SetItemOwnersResponse) updates) => super.copyWith((message) => updates(message as SetItemOwnersResponse)) as SetItemOwnersResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetItemOwnersResponse create() => SetItemOwnersResponse._();
  SetItemOwnersResponse createEmptyInstance() => create();
  static $pb.PbList<SetItemOwnersResponse> createRepeated() => $pb.PbList<SetItemOwnersResponse>();
  @$core.pragma('dart2js:noInline')
  static SetItemOwnersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetItemOwnersResponse>(create);
  static SetItemOwnersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class AddItemOwnerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddItemOwnerRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOM<Bill>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill', subBuilder: Bill.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId', $pb.PbFieldType.O3, protoName: 'itemId')
    ..aOM<User>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner', subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  AddItemOwnerRequest._() : super();
  factory AddItemOwnerRequest({
    Bill? bill,
    $core.int? itemId,
    User? owner,
  }) {
    final _result = create();
    if (bill != null) {
      _result.bill = bill;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    return _result;
  }
  factory AddItemOwnerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddItemOwnerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddItemOwnerRequest clone() => AddItemOwnerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddItemOwnerRequest copyWith(void Function(AddItemOwnerRequest) updates) => super.copyWith((message) => updates(message as AddItemOwnerRequest)) as AddItemOwnerRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddItemOwnerRequest create() => AddItemOwnerRequest._();
  AddItemOwnerRequest createEmptyInstance() => create();
  static $pb.PbList<AddItemOwnerRequest> createRepeated() => $pb.PbList<AddItemOwnerRequest>();
  @$core.pragma('dart2js:noInline')
  static AddItemOwnerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddItemOwnerRequest>(create);
  static AddItemOwnerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Bill get bill => $_getN(0);
  @$pb.TagNumber(1)
  set bill(Bill v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBill() => $_has(0);
  @$pb.TagNumber(1)
  void clearBill() => clearField(1);
  @$pb.TagNumber(1)
  Bill ensureBill() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get itemId => $_getIZ(1);
  @$pb.TagNumber(2)
  set itemId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemId() => clearField(2);

  @$pb.TagNumber(3)
  User get owner => $_getN(2);
  @$pb.TagNumber(3)
  set owner(User v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOwner() => $_has(2);
  @$pb.TagNumber(3)
  void clearOwner() => clearField(3);
  @$pb.TagNumber(3)
  User ensureOwner() => $_ensure(2);
}

class AddItemOwnerResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddItemOwnerResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  AddItemOwnerResponse._() : super();
  factory AddItemOwnerResponse({
    $core.bool? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory AddItemOwnerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddItemOwnerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddItemOwnerResponse clone() => AddItemOwnerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddItemOwnerResponse copyWith(void Function(AddItemOwnerResponse) updates) => super.copyWith((message) => updates(message as AddItemOwnerResponse)) as AddItemOwnerResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddItemOwnerResponse create() => AddItemOwnerResponse._();
  AddItemOwnerResponse createEmptyInstance() => create();
  static $pb.PbList<AddItemOwnerResponse> createRepeated() => $pb.PbList<AddItemOwnerResponse>();
  @$core.pragma('dart2js:noInline')
  static AddItemOwnerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddItemOwnerResponse>(create);
  static AddItemOwnerResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class RemoveItemOwnerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveItemOwnerRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOM<Bill>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill', subBuilder: Bill.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId', $pb.PbFieldType.O3, protoName: 'itemId')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', $pb.PbFieldType.O3, protoName: 'userId')
    ..hasRequiredFields = false
  ;

  RemoveItemOwnerRequest._() : super();
  factory RemoveItemOwnerRequest({
    Bill? bill,
    $core.int? itemId,
    $core.int? userId,
  }) {
    final _result = create();
    if (bill != null) {
      _result.bill = bill;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory RemoveItemOwnerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveItemOwnerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveItemOwnerRequest clone() => RemoveItemOwnerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveItemOwnerRequest copyWith(void Function(RemoveItemOwnerRequest) updates) => super.copyWith((message) => updates(message as RemoveItemOwnerRequest)) as RemoveItemOwnerRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveItemOwnerRequest create() => RemoveItemOwnerRequest._();
  RemoveItemOwnerRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveItemOwnerRequest> createRepeated() => $pb.PbList<RemoveItemOwnerRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveItemOwnerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveItemOwnerRequest>(create);
  static RemoveItemOwnerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Bill get bill => $_getN(0);
  @$pb.TagNumber(1)
  set bill(Bill v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBill() => $_has(0);
  @$pb.TagNumber(1)
  void clearBill() => clearField(1);
  @$pb.TagNumber(1)
  Bill ensureBill() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get itemId => $_getIZ(1);
  @$pb.TagNumber(2)
  set itemId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get userId => $_getIZ(2);
  @$pb.TagNumber(3)
  set userId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);
}

class RemoveItemOwnerResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveItemOwnerResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  RemoveItemOwnerResponse._() : super();
  factory RemoveItemOwnerResponse({
    $core.bool? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory RemoveItemOwnerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveItemOwnerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveItemOwnerResponse clone() => RemoveItemOwnerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveItemOwnerResponse copyWith(void Function(RemoveItemOwnerResponse) updates) => super.copyWith((message) => updates(message as RemoveItemOwnerResponse)) as RemoveItemOwnerResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveItemOwnerResponse create() => RemoveItemOwnerResponse._();
  RemoveItemOwnerResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveItemOwnerResponse> createRepeated() => $pb.PbList<RemoveItemOwnerResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveItemOwnerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveItemOwnerResponse>(create);
  static RemoveItemOwnerResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class GetItemOwnersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetItemOwnersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..aOM<Bill>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bill', subBuilder: Bill.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId', $pb.PbFieldType.O3, protoName: 'itemId')
    ..hasRequiredFields = false
  ;

  GetItemOwnersRequest._() : super();
  factory GetItemOwnersRequest({
    Bill? bill,
    $core.int? itemId,
  }) {
    final _result = create();
    if (bill != null) {
      _result.bill = bill;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    return _result;
  }
  factory GetItemOwnersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetItemOwnersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetItemOwnersRequest clone() => GetItemOwnersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetItemOwnersRequest copyWith(void Function(GetItemOwnersRequest) updates) => super.copyWith((message) => updates(message as GetItemOwnersRequest)) as GetItemOwnersRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetItemOwnersRequest create() => GetItemOwnersRequest._();
  GetItemOwnersRequest createEmptyInstance() => create();
  static $pb.PbList<GetItemOwnersRequest> createRepeated() => $pb.PbList<GetItemOwnersRequest>();
  @$core.pragma('dart2js:noInline')
  static GetItemOwnersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetItemOwnersRequest>(create);
  static GetItemOwnersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Bill get bill => $_getN(0);
  @$pb.TagNumber(1)
  set bill(Bill v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBill() => $_has(0);
  @$pb.TagNumber(1)
  void clearBill() => clearField(1);
  @$pb.TagNumber(1)
  Bill ensureBill() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get itemId => $_getIZ(1);
  @$pb.TagNumber(2)
  set itemId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemId() => clearField(2);
}

class GetItemOwnersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetItemOwnersResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'warikan'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.O3)
    ..pc<User>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owners', $pb.PbFieldType.PM, subBuilder: User.create)
    ..hasRequiredFields = false
  ;

  GetItemOwnersResponse._() : super();
  factory GetItemOwnersResponse({
    $core.int? count,
    $core.Iterable<User>? owners,
  }) {
    final _result = create();
    if (count != null) {
      _result.count = count;
    }
    if (owners != null) {
      _result.owners.addAll(owners);
    }
    return _result;
  }
  factory GetItemOwnersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetItemOwnersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetItemOwnersResponse clone() => GetItemOwnersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetItemOwnersResponse copyWith(void Function(GetItemOwnersResponse) updates) => super.copyWith((message) => updates(message as GetItemOwnersResponse)) as GetItemOwnersResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetItemOwnersResponse create() => GetItemOwnersResponse._();
  GetItemOwnersResponse createEmptyInstance() => create();
  static $pb.PbList<GetItemOwnersResponse> createRepeated() => $pb.PbList<GetItemOwnersResponse>();
  @$core.pragma('dart2js:noInline')
  static GetItemOwnersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetItemOwnersResponse>(create);
  static GetItemOwnersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<User> get owners => $_getList(1);
}

