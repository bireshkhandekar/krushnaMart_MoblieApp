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

Future<bool?> checktotalAmountNull(
  BuildContext context,
  String? totalAmount,
) async {
  // totalAmount is equal to null and less equal to 0 then false otherwise true
  if (totalAmount == null || double.parse(totalAmount) <= 0) {
    return false;
  } else {
    return true;
  }
}
