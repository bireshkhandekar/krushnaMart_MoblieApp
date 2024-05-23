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

Future<int?> customQtySum(
  BuildContext context,
  List<int>? qty,
) async {
  // sum of list
  int sum = 0;
  if (qty != null) {
    for (int i = 0; i < qty.length; i++) {
      sum += qty[i];
    }
  }
}
