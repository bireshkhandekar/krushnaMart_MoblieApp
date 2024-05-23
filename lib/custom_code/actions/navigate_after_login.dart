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

Future navigateAfterLogin(
  BuildContext context,
  bool fromSetPinPage,
) async {
  // Add your function code here!
  if (fromSetPinPage) {
    // Navigate to the Home Page
    context.pushNamed('HomePage');
  } else {
    // Navigate to the previous page
    Navigator.pop(context);
  }
}
