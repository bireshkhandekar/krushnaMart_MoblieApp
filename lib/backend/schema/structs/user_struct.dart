// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    int? id,
    String? userName,
    String? moblieNumber,
    String? accessToken,
    String? refreshToken,
    String? shippingAddress,
    String? houseNo,
    String? lineNo,
    String? landMark,
    String? city,
    String? state,
    String? pincode,
  })  : _id = id,
        _userName = userName,
        _moblieNumber = moblieNumber,
        _accessToken = accessToken,
        _refreshToken = refreshToken,
        _shippingAddress = shippingAddress,
        _houseNo = houseNo,
        _lineNo = lineNo,
        _landMark = landMark,
        _city = city,
        _state = state,
        _pincode = pincode;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "moblieNumber" field.
  String? _moblieNumber;
  String get moblieNumber => _moblieNumber ?? '';
  set moblieNumber(String? val) => _moblieNumber = val;

  bool hasMoblieNumber() => _moblieNumber != null;

  // "accessToken" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;

  bool hasAccessToken() => _accessToken != null;

  // "refreshToken" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;

  bool hasRefreshToken() => _refreshToken != null;

  // "ShippingAddress" field.
  String? _shippingAddress;
  String get shippingAddress => _shippingAddress ?? '';
  set shippingAddress(String? val) => _shippingAddress = val;

  bool hasShippingAddress() => _shippingAddress != null;

  // "houseNo" field.
  String? _houseNo;
  String get houseNo => _houseNo ?? '';
  set houseNo(String? val) => _houseNo = val;

  bool hasHouseNo() => _houseNo != null;

  // "lineNo" field.
  String? _lineNo;
  String get lineNo => _lineNo ?? '';
  set lineNo(String? val) => _lineNo = val;

  bool hasLineNo() => _lineNo != null;

  // "landMark" field.
  String? _landMark;
  String get landMark => _landMark ?? '';
  set landMark(String? val) => _landMark = val;

  bool hasLandMark() => _landMark != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "pincode" field.
  String? _pincode;
  String get pincode => _pincode ?? '';
  set pincode(String? val) => _pincode = val;

  bool hasPincode() => _pincode != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: castToType<int>(data['id']),
        userName: data['userName'] as String?,
        moblieNumber: data['moblieNumber'] as String?,
        accessToken: data['accessToken'] as String?,
        refreshToken: data['refreshToken'] as String?,
        shippingAddress: data['ShippingAddress'] as String?,
        houseNo: data['houseNo'] as String?,
        lineNo: data['lineNo'] as String?,
        landMark: data['landMark'] as String?,
        city: data['city'] as String?,
        state: data['state'] as String?,
        pincode: data['pincode'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'userName': _userName,
        'moblieNumber': _moblieNumber,
        'accessToken': _accessToken,
        'refreshToken': _refreshToken,
        'ShippingAddress': _shippingAddress,
        'houseNo': _houseNo,
        'lineNo': _lineNo,
        'landMark': _landMark,
        'city': _city,
        'state': _state,
        'pincode': _pincode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'moblieNumber': serializeParam(
          _moblieNumber,
          ParamType.String,
        ),
        'accessToken': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'refreshToken': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
        'ShippingAddress': serializeParam(
          _shippingAddress,
          ParamType.String,
        ),
        'houseNo': serializeParam(
          _houseNo,
          ParamType.String,
        ),
        'lineNo': serializeParam(
          _lineNo,
          ParamType.String,
        ),
        'landMark': serializeParam(
          _landMark,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'pincode': serializeParam(
          _pincode,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
        moblieNumber: deserializeParam(
          data['moblieNumber'],
          ParamType.String,
          false,
        ),
        accessToken: deserializeParam(
          data['accessToken'],
          ParamType.String,
          false,
        ),
        refreshToken: deserializeParam(
          data['refreshToken'],
          ParamType.String,
          false,
        ),
        shippingAddress: deserializeParam(
          data['ShippingAddress'],
          ParamType.String,
          false,
        ),
        houseNo: deserializeParam(
          data['houseNo'],
          ParamType.String,
          false,
        ),
        lineNo: deserializeParam(
          data['lineNo'],
          ParamType.String,
          false,
        ),
        landMark: deserializeParam(
          data['landMark'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        pincode: deserializeParam(
          data['pincode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        id == other.id &&
        userName == other.userName &&
        moblieNumber == other.moblieNumber &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        shippingAddress == other.shippingAddress &&
        houseNo == other.houseNo &&
        lineNo == other.lineNo &&
        landMark == other.landMark &&
        city == other.city &&
        state == other.state &&
        pincode == other.pincode;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        userName,
        moblieNumber,
        accessToken,
        refreshToken,
        shippingAddress,
        houseNo,
        lineNo,
        landMark,
        city,
        state,
        pincode
      ]);
}

UserStruct createUserStruct({
  int? id,
  String? userName,
  String? moblieNumber,
  String? accessToken,
  String? refreshToken,
  String? shippingAddress,
  String? houseNo,
  String? lineNo,
  String? landMark,
  String? city,
  String? state,
  String? pincode,
}) =>
    UserStruct(
      id: id,
      userName: userName,
      moblieNumber: moblieNumber,
      accessToken: accessToken,
      refreshToken: refreshToken,
      shippingAddress: shippingAddress,
      houseNo: houseNo,
      lineNo: lineNo,
      landMark: landMark,
      city: city,
      state: state,
      pincode: pincode,
    );
