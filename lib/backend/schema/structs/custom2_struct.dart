// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Custom2Struct extends BaseStruct {
  Custom2Struct({
    int? qty,
    DateTime? date,
  })  : _qty = qty,
        _date = date;

  // "qty" field.
  int? _qty;
  int get qty => _qty ?? 0;
  set qty(int? val) => _qty = val;

  void incrementQty(int amount) => qty = qty + amount;

  bool hasQty() => _qty != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  static Custom2Struct fromMap(Map<String, dynamic> data) => Custom2Struct(
        qty: castToType<int>(data['qty']),
        date: data['date'] as DateTime?,
      );

  static Custom2Struct? maybeFromMap(dynamic data) =>
      data is Map ? Custom2Struct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'qty': _qty,
        'date': _date,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'qty': serializeParam(
          _qty,
          ParamType.int,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static Custom2Struct fromSerializableMap(Map<String, dynamic> data) =>
      Custom2Struct(
        qty: deserializeParam(
          data['qty'],
          ParamType.int,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'Custom2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Custom2Struct && qty == other.qty && date == other.date;
  }

  @override
  int get hashCode => const ListEquality().hash([qty, date]);
}

Custom2Struct createCustom2Struct({
  int? qty,
  DateTime? date,
}) =>
    Custom2Struct(
      qty: qty,
      date: date,
    );
