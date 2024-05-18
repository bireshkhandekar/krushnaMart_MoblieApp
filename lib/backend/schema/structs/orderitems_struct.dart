// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderitemsStruct extends BaseStruct {
  OrderitemsStruct({
    int? itemid,
    String? itemName,
    double? itemPrice,
    int? itemQty,
  })  : _itemid = itemid,
        _itemName = itemName,
        _itemPrice = itemPrice,
        _itemQty = itemQty;

  // "itemid" field.
  int? _itemid;
  int get itemid => _itemid ?? 0;
  set itemid(int? val) => _itemid = val;
  void incrementItemid(int amount) => _itemid = itemid + amount;
  bool hasItemid() => _itemid != null;

  // "itemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  set itemName(String? val) => _itemName = val;
  bool hasItemName() => _itemName != null;

  // "itemPrice" field.
  double? _itemPrice;
  double get itemPrice => _itemPrice ?? 0.0;
  set itemPrice(double? val) => _itemPrice = val;
  void incrementItemPrice(double amount) => _itemPrice = itemPrice + amount;
  bool hasItemPrice() => _itemPrice != null;

  // "itemQty" field.
  int? _itemQty;
  int get itemQty => _itemQty ?? 0;
  set itemQty(int? val) => _itemQty = val;
  void incrementItemQty(int amount) => _itemQty = itemQty + amount;
  bool hasItemQty() => _itemQty != null;

  static OrderitemsStruct fromMap(Map<String, dynamic> data) =>
      OrderitemsStruct(
        itemid: castToType<int>(data['itemid']),
        itemName: data['itemName'] as String?,
        itemPrice: castToType<double>(data['itemPrice']),
        itemQty: castToType<int>(data['itemQty']),
      );

  static OrderitemsStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderitemsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'itemid': _itemid,
        'itemName': _itemName,
        'itemPrice': _itemPrice,
        'itemQty': _itemQty,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'itemid': serializeParam(
          _itemid,
          ParamType.int,
        ),
        'itemName': serializeParam(
          _itemName,
          ParamType.String,
        ),
        'itemPrice': serializeParam(
          _itemPrice,
          ParamType.double,
        ),
        'itemQty': serializeParam(
          _itemQty,
          ParamType.int,
        ),
      }.withoutNulls;

  static OrderitemsStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderitemsStruct(
        itemid: deserializeParam(
          data['itemid'],
          ParamType.int,
          false,
        ),
        itemName: deserializeParam(
          data['itemName'],
          ParamType.String,
          false,
        ),
        itemPrice: deserializeParam(
          data['itemPrice'],
          ParamType.double,
          false,
        ),
        itemQty: deserializeParam(
          data['itemQty'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'OrderitemsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderitemsStruct &&
        itemid == other.itemid &&
        itemName == other.itemName &&
        itemPrice == other.itemPrice &&
        itemQty == other.itemQty;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([itemid, itemName, itemPrice, itemQty]);
}

OrderitemsStruct createOrderitemsStruct({
  int? itemid,
  String? itemName,
  double? itemPrice,
  int? itemQty,
}) =>
    OrderitemsStruct(
      itemid: itemid,
      itemName: itemName,
      itemPrice: itemPrice,
      itemQty: itemQty,
    );
