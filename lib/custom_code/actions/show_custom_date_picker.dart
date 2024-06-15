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

import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

final today = DateUtils.dateOnly(DateTime.now());

Future<List<String>?> showCustomDatePicker(BuildContext context) async {
  List<DateTime?> _multiDatePickerValueWithDefaultValue = [];

  final config = CalendarDatePicker2Config(
    calendarType: CalendarDatePicker2Type.multi,
    selectedDayHighlightColor: Colors.indigo,
  );

  List<String>? selectedDates;

  await showModalBottomSheet(
    context: context,
    builder: (BuildContext builder) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Center(
                child: SizedBox(
                  width: 375,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CalendarDatePicker2(
                        config: config,
                        value: _multiDatePickerValueWithDefaultValue,
                        onValueChanged: (dates) {
                          setState(() {
                            // Check if selected dates are in the future
                            final now = DateTime.now();
                            _multiDatePickerValueWithDefaultValue = dates
                                .where((date) =>
                                    date != null &&
                                    date.isAfter(now) &&
                                    date.difference(now).inDays <= 60)
                                .toList();
                          });
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            TextButton(
                              onPressed: () {
                                selectedDates = _getValueText(
                                  config.calendarType,
                                  _multiDatePickerValueWithDefaultValue,
                                );
                                Navigator.pop(context, selectedDates);
                              },
                              child: Text(
                                'OK',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      );
    },
  );

  return selectedDates;
}

List<String> _getValueText(
  CalendarDatePicker2Type datePickerType,
  List<DateTime?> values,
) {
  values = values.map((e) => e != null ? DateUtils.dateOnly(e) : null).toList();
  List<String> valueTexts =
      values.map((v) => v.toString().replaceAll('00:00:00.000', '')).toList();

  // Do whatever you need with the selected values
  FFAppState().selectedDate = values.cast<DateTime>();
  FFAppState().selectedqty = List.generate(values.length, (index) => 1);

  return valueTexts;
}
