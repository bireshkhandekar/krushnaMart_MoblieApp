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

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future constructInsertCustomDatesSQL(
  BuildContext context,
  List<String> dates,
  List<int> qty,
) async {
  // Add your function code here!
  // Ensure the lists are of the same length
  if (dates.length != qty.length) {
    throw Exception("Dates and Qty lists must be of the same length");
  }

  // Construct the SQL query
  String sql = "INSERT INTO customDates (dates, qty) VALUES ";
  List<String> values = [];

  for (int i = 0; i < dates.length; i++) {
    values.add("('${dates[i]}', ${qty[i]})");
  }

  sql += values.join(", ") + ";";

  // Return the constructed SQL query
  await executeSQLQuery(sql);
}

Future<void> executeSQLQuery(String sql) async {
  // Get a reference to the database.
  final Future<Database> database = openDatabase(
    join(await getDatabasesPath(), 'cart_Kmart.db'),
  );

  final Database db = await database;

  // Execute the SQL query
  await db.execute(sql);
}
