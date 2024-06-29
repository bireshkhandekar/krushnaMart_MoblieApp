import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<DateTime> _selectedDate = [];
  List<DateTime> get selectedDate => _selectedDate;
  set selectedDate(List<DateTime> value) {
    _selectedDate = value;
  }

  void addToSelectedDate(DateTime value) {
    selectedDate.add(value);
  }

  void removeFromSelectedDate(DateTime value) {
    selectedDate.remove(value);
  }

  void removeAtIndexFromSelectedDate(int index) {
    selectedDate.removeAt(index);
  }

  void updateSelectedDateAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    selectedDate[index] = updateFn(_selectedDate[index]);
  }

  void insertAtIndexInSelectedDate(int index, DateTime value) {
    selectedDate.insert(index, value);
  }

  bool _customdatesshow = false;
  bool get customdatesshow => _customdatesshow;
  set customdatesshow(bool value) {
    _customdatesshow = value;
  }

  int _qty = 0;
  int get qty => _qty;
  set qty(int value) {
    _qty = value;
  }

  bool _everydayshow = false;
  bool get everydayshow => _everydayshow;
  set everydayshow(bool value) {
    _everydayshow = value;
  }

  String _startDate = '';
  String get startDate => _startDate;
  set startDate(String value) {
    _startDate = value;
  }

  String _sudscribeType = '';
  String get sudscribeType => _sudscribeType;
  set sudscribeType(String value) {
    _sudscribeType = value;
  }

  String _endDate = '';
  String get endDate => _endDate;
  set endDate(String value) {
    _endDate = value;
  }

  List<int> _selectedqty = [];
  List<int> get selectedqty => _selectedqty;
  set selectedqty(List<int> value) {
    _selectedqty = value;
  }

  void addToSelectedqty(int value) {
    selectedqty.add(value);
  }

  void removeFromSelectedqty(int value) {
    selectedqty.remove(value);
  }

  void removeAtIndexFromSelectedqty(int index) {
    selectedqty.removeAt(index);
  }

  void updateSelectedqtyAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    selectedqty[index] = updateFn(_selectedqty[index]);
  }

  void insertAtIndexInSelectedqty(int index, int value) {
    selectedqty.insert(index, value);
  }

  int _cartcount = 0;
  int get cartcount => _cartcount;
  set cartcount(int value) {
    _cartcount = value;
  }

  List<OrderitemsStruct> _orderitems = [];
  List<OrderitemsStruct> get orderitems => _orderitems;
  set orderitems(List<OrderitemsStruct> value) {
    _orderitems = value;
  }

  void addToOrderitems(OrderitemsStruct value) {
    orderitems.add(value);
  }

  void removeFromOrderitems(OrderitemsStruct value) {
    orderitems.remove(value);
  }

  void removeAtIndexFromOrderitems(int index) {
    orderitems.removeAt(index);
  }

  void updateOrderitemsAtIndex(
    int index,
    OrderitemsStruct Function(OrderitemsStruct) updateFn,
  ) {
    orderitems[index] = updateFn(_orderitems[index]);
  }

  void insertAtIndexInOrderitems(int index, OrderitemsStruct value) {
    orderitems.insert(index, value);
  }

  bool _evarydaycalculetion = false;
  bool get evarydaycalculetion => _evarydaycalculetion;
  set evarydaycalculetion(bool value) {
    _evarydaycalculetion = value;
  }

  int _EvarydayQty = 0;
  int get EvarydayQty => _EvarydayQty;
  set EvarydayQty(int value) {
    _EvarydayQty = value;
  }

  double _EvarydayAmount = 0.0;
  double get EvarydayAmount => _EvarydayAmount;
  set EvarydayAmount(double value) {
    _EvarydayAmount = value;
  }

  bool _customCalculate = false;
  bool get customCalculate => _customCalculate;
  set customCalculate(bool value) {
    _customCalculate = value;
  }

  UserStruct _userUpdate = UserStruct();
  UserStruct get userUpdate => _userUpdate;
  set userUpdate(UserStruct value) {
    _userUpdate = value;
  }

  void updateUserUpdateStruct(Function(UserStruct) updateFn) {
    updateFn(_userUpdate);
  }

  List<CustomDatesStruct> _customdates = [
    CustomDatesStruct.fromSerializableMap(jsonDecode(
        '{\"dates\":\"[\\\"Hello World\\\"]\",\"qty\":\"[\\\"0\\\"]\"}')),
    CustomDatesStruct.fromSerializableMap(jsonDecode(
        '{\"dates\":\"[\\\"Hello World2\\\"]\",\"qty\":\"[\\\"0\\\"]\"}'))
  ];
  List<CustomDatesStruct> get customdates => _customdates;
  set customdates(List<CustomDatesStruct> value) {
    _customdates = value;
  }

  void addToCustomdates(CustomDatesStruct value) {
    customdates.add(value);
  }

  void removeFromCustomdates(CustomDatesStruct value) {
    customdates.remove(value);
  }

  void removeAtIndexFromCustomdates(int index) {
    customdates.removeAt(index);
  }

  void updateCustomdatesAtIndex(
    int index,
    CustomDatesStruct Function(CustomDatesStruct) updateFn,
  ) {
    customdates[index] = updateFn(_customdates[index]);
  }

  void insertAtIndexInCustomdates(int index, CustomDatesStruct value) {
    customdates.insert(index, value);
  }

  List<dynamic> _customdatesjson = [];
  List<dynamic> get customdatesjson => _customdatesjson;
  set customdatesjson(List<dynamic> value) {
    _customdatesjson = value;
  }

  void addToCustomdatesjson(dynamic value) {
    customdatesjson.add(value);
  }

  void removeFromCustomdatesjson(dynamic value) {
    customdatesjson.remove(value);
  }

  void removeAtIndexFromCustomdatesjson(int index) {
    customdatesjson.removeAt(index);
  }

  void updateCustomdatesjsonAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    customdatesjson[index] = updateFn(_customdatesjson[index]);
  }

  void insertAtIndexInCustomdatesjson(int index, dynamic value) {
    customdatesjson.insert(index, value);
  }
}
