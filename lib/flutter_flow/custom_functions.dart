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

List<dynamic>? convertToitem(
  List<int> itemid,
  List<String> itemName,
  List<double> itemsPrice,
  List<int> itemqty,
) {
  // list to json convert
  List<dynamic> order_items = [];
  for (int i = 0; i < itemid.length; i++) {
    Map<String, dynamic> item = {
      'item_id': itemid[i],
      'item_name': itemName[i],
      'item_price': itemsPrice[i],
      'quantity': itemqty[i],
    };
    order_items.add(item);
  }
  return order_items;
}

bool paymentcondition(String status) {
  // status is equal to success then true otherwise false
  if (status == 'success') {
    return true;
  } else {
    return false;
  }
}

DateTime limitDateselect(DateTime currentDate) {
  // 60th date from current date
  return currentDate.add(Duration(days: 60));
}

bool toggleCheckBoxes(
  bool isFirstCheckbox,
  bool isSecondCheckboxChecked,
) {
  // I have two check boxes. When one is checked, the other will be unchecked
  if (isFirstCheckbox) {
    return true;
  } else {
    return !isSecondCheckboxChecked;
  }
}

bool? checkWalletBalence(
  double totalAmount,
  double walletBalence,
) {
  // totalAmount less then equal to walletBalence is true otherwise false
  if (totalAmount <= walletBalence) {
    return true;
  } else {
    return false;
  }
}

int calculetedays(
  DateTime date1,
  DateTime date2,
) {
  // calculate days in 2 dates
  // Duration difference = date2.difference(date1);
  // int days = difference.inDays + 1;
  // return days.abs();
  return date2.difference(date1).inDays + 1;
}

double? evarydayqtyintoprice(
  int? quantity,
  double? itemprice,
) {
  // quantity in to itemprice
  if (quantity == null || itemprice == null) {
    return null;
  }
  return quantity * itemprice;
}

double? evarydayTotalAmount(
  double? walletAmount,
  double? orderAmount,
) {
  // walletAmount - orderAmount
  if (walletAmount != null && orderAmount != null) {
    return walletAmount - orderAmount;
  } else {
    return null;
  }
}

bool? evarydayTotalAmountcheck(double? totalAmount) {
  // totalAmount <= 0
  if (totalAmount != null && totalAmount <= 0) {
    return true;
  } else {
    return false;
  }
}

int? sumqtycustom(List<int>? qty) {
  // sum of list
  if (qty == null || qty.isEmpty) {
    return null;
  }
  int sum = 0;
  for (int i = 0; i < qty.length; i++) {
    sum += qty[i];
  }
  return sum;
}

double? totalorderAmountCustom(
  int? qty,
  double? price,
) {
  // qty into price
  if (qty == null || price == null || qty <= 0 || price <= 0) {
    return null;
  }
  return qty * price;
}

double? remainingbalenceCustom(
  double? walletBalence,
  double? orderAmount,
) {
  // sum walletBalence and orderAmount
  if (walletBalence == null || orderAmount == null) {
    return null;
  }
  return walletBalence - orderAmount;
}
