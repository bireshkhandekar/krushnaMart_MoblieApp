import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _qty = prefs.getInt('ff_qty') ?? _qty;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DateTime> _pickedDates = [];
  List<DateTime> get pickedDates => _pickedDates;
  set pickedDates(List<DateTime> value) {
    _pickedDates = value;
  }

  void addToPickedDates(DateTime value) {
    _pickedDates.add(value);
  }

  void removeFromPickedDates(DateTime value) {
    _pickedDates.remove(value);
  }

  void removeAtIndexFromPickedDates(int index) {
    _pickedDates.removeAt(index);
  }

  void updatePickedDatesAtIndex(
    int index,
    DateTime Function(DateTime) updateFn,
  ) {
    _pickedDates[index] = updateFn(_pickedDates[index]);
  }

  void insertAtIndexInPickedDates(int index, DateTime value) {
    _pickedDates.insert(index, value);
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

  int _qty = 0;
  int get qty => _qty;
  set qty(int value) {
    _qty = value;
    prefs.setInt('ff_qty', value);
  }

  bool _customdatesshow = false;
  bool get customdatesshow => _customdatesshow;
  set customdatesshow(bool value) {
    _customdatesshow = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
