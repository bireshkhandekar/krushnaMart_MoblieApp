import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

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
    _selectedDate.add(value);
  }

  void removeFromSelectedDate(DateTime value) {
    _selectedDate.remove(value);
  }

  void removeAtIndexFromSelectedDate(int index) {
    _selectedDate.removeAt(index);
  }

  void updateSelectedDateAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    _selectedDate[index] = updateFn(_selectedDate[index]);
  }

  void insertAtIndexInSelectedDate(int index, DateTime value) {
    _selectedDate.insert(index, value);
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
    _selectedqty.add(value);
  }

  void removeFromSelectedqty(int value) {
    _selectedqty.remove(value);
  }

  void removeAtIndexFromSelectedqty(int index) {
    _selectedqty.removeAt(index);
  }

  void updateSelectedqtyAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _selectedqty[index] = updateFn(_selectedqty[index]);
  }

  void insertAtIndexInSelectedqty(int index, int value) {
    _selectedqty.insert(index, value);
  }

  int _cartcount = 0;
  int get cartcount => _cartcount;
  set cartcount(int value) {
    _cartcount = value;
  }

  String _username = '';
  String get username => _username;
  set username(String value) {
    _username = value;
  }

  String _moblienumber = '';
  String get moblienumber => _moblienumber;
  set moblienumber(String value) {
    _moblienumber = value;
  }

  int _userid = 0;
  int get userid => _userid;
  set userid(int value) {
    _userid = value;
  }

  String _address = '';
  String get address => _address;
  set address(String value) {
    _address = value;
  }

  List<OrderitemsStruct> _orderitems = [];
  List<OrderitemsStruct> get orderitems => _orderitems;
  set orderitems(List<OrderitemsStruct> value) {
    _orderitems = value;
  }

  void addToOrderitems(OrderitemsStruct value) {
    _orderitems.add(value);
  }

  void removeFromOrderitems(OrderitemsStruct value) {
    _orderitems.remove(value);
  }

  void removeAtIndexFromOrderitems(int index) {
    _orderitems.removeAt(index);
  }

  void updateOrderitemsAtIndex(
    int index,
    OrderitemsStruct Function(OrderitemsStruct) updateFn,
  ) {
    _orderitems[index] = updateFn(_orderitems[index]);
  }

  void insertAtIndexInOrderitems(int index, OrderitemsStruct value) {
    _orderitems.insert(index, value);
  }
}
