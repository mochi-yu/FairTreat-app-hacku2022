///
//  Generated code. Do not modify.
//  source: lib/grpc/protos/warikan.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class BILL_CHANGE_TYPE extends $pb.ProtobufEnum {
  static const BILL_CHANGE_TYPE OWNER = BILL_CHANGE_TYPE._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OWNER');
  static const BILL_CHANGE_TYPE GUEST = BILL_CHANGE_TYPE._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GUEST');
  static const BILL_CHANGE_TYPE BILL = BILL_CHANGE_TYPE._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BILL');
  static const BILL_CHANGE_TYPE ITEM = BILL_CHANGE_TYPE._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ITEM');

  static const $core.List<BILL_CHANGE_TYPE> values = <BILL_CHANGE_TYPE> [
    OWNER,
    GUEST,
    BILL,
    ITEM,
  ];

  static final $core.Map<$core.int, BILL_CHANGE_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BILL_CHANGE_TYPE? valueOf($core.int value) => _byValue[value];

  const BILL_CHANGE_TYPE._($core.int v, $core.String n) : super(v, n);
}

