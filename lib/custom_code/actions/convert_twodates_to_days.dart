// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> convertTwodatesToDays(
  BuildContext context,
  DateTime date1,
  DateTime date2,
  int quantity,
) async {
  int difference = calculateDateDifference(date1, date2);
  int totalQuantity = difference * quantity;
  return totalQuantity;
}

int calculateDateDifference(DateTime date1, DateTime date2) {
  return date2.difference(date1).inDays + 1;
}
