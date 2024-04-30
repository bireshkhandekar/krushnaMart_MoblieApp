import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/auth/custom_auth/auth_util.dart';

List<String>? handleNullList(List<String>? list) {
  // handle Null List
  if (list == null) {
    return [];
  } else {
    return list;
  }
}

bool? conditiondiscount(double? discount) {
  // If discount is 0 or null then return false otherwise return true
  if (discount == 0.0) {
    return false;
  } else {
    return true;
  }
}

bool? conditionTrMode(String? mode) {
  // mode isequl to credit then true otherwise false
  if (mode == "CREDIT") {
    return true;
  } else {
    return false;
  }
}

bool? transectionModeCheck(String? mode) {
  // if mode is equal to credit then true otherwise false
  if (mode == "purchase") {
    return false;
  } else {
    return true;
  }
}

double? handletotalpricenull(double? totalprice) {
  // totalprice equl to null then send 0.00 otherwise value
  if (totalprice == null) {
    return 0.00;
  } else {
    return totalprice;
  }
}
