// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomDatesStruct extends BaseStruct {
  CustomDatesStruct({
    List<String>? dates,
    List<int>? qty,
  })  : _dates = dates,
        _qty = qty;

  // "dates" field.
  List<String>? _dates;
  List<String> get dates => _dates ?? const [];
  set dates(List<String>? val) => _dates = val;

  void updateDates(Function(List<String>) updateFn) {
    updateFn(_dates ??= []);
  }

  bool hasDates() => _dates != null;

  // "qty" field.
  List<int>? _qty;
  List<int> get qty => _qty ?? const [];
  set qty(List<int>? val) => _qty = val;

  void updateQty(Function(List<int>) updateFn) {
    updateFn(_qty ??= []);
  }

  bool hasQty() => _qty != null;

  static CustomDatesStruct fromMap(Map<String, dynamic> data) =>
      CustomDatesStruct(
        dates: getDataList(data['dates']),
        qty: getDataList(data['qty']),
      );

  static CustomDatesStruct? maybeFromMap(dynamic data) => data is Map
      ? CustomDatesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dates': _dates,
        'qty': _qty,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dates': serializeParam(
          _dates,
          ParamType.String,
          isList: true,
        ),
        'qty': serializeParam(
          _qty,
          ParamType.int,
          isList: true,
        ),
      }.withoutNulls;

  static CustomDatesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomDatesStruct(
        dates: deserializeParam<String>(
          data['dates'],
          ParamType.String,
          true,
        ),
        qty: deserializeParam<int>(
          data['qty'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'CustomDatesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CustomDatesStruct &&
        listEquality.equals(dates, other.dates) &&
        listEquality.equals(qty, other.qty);
  }

  @override
  int get hashCode => const ListEquality().hash([dates, qty]);
}

CustomDatesStruct createCustomDatesStruct() => CustomDatesStruct();
