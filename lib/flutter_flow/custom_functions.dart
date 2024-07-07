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
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

int newCustomCartFunction(
  List<ShoppingCartStruct> cartlist,
  int productid,
) {
  for (var item in cartlist) {
    if (item.productid == productid) {
      return item.quantity;
    }
  }
  return 0;
}

int newCustomFunctionCopy(
  List<ShoppingCartStruct> cartlist,
  int productid,
) {
  for (int i = 0; i < cartlist.length; i++) {
    if (cartlist[i].productid == productid) {
      return i;
    }
  }
  return -1;
}

int totalquantities(List<ShoppingCartStruct> shoppingcart) {
  int totalQuantity = 0;
  for (var item in shoppingcart) {
    totalQuantity += item.quantity;
  }
  return totalQuantity;
}

List<String> timeslotCustomfunction(
  int blockDurationMinutes,
  int bufferMinutes,
  DateTime openTime,
  DateTime closeTime,
) {
  List<String> timeSlots = [];

  int totalMinutes =
      closeTime.difference(openTime).inMinutes; // Calculate total minutes

  int blockWithBuffer =
      blockDurationMinutes + (bufferMinutes ?? 0); // Include buffer

  DateTime current = openTime;
  while (current.isBefore(closeTime)) {
    String slotStart = DateFormat('hh:mm a').format(current);
    current = current.add(Duration(minutes: blockDurationMinutes));
    String slotEnd = DateFormat('hh:mm a').format(current);

    timeSlots.add('$slotStart - $slotEnd'); // Add slot to list

    current = current.add(Duration(minutes: bufferMinutes ?? 0)); // Add buffer
  }

  return timeSlots;
}

double totalquantitiesCopy(List<ShoppingCartStruct> shoppingcart) {
  double totalprice = 0.0;
  print(shoppingcart);
  for (var item in shoppingcart) {
    totalprice += item.price * item.quantity;
  }
  return totalprice;
}
