// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> removeAmount(
  int count,
  int fprice,
) async {
  int totalPrice = 0;
  // Add your function code here!
  if (count <= 0) {
    totalPrice = 0;
  } else {
    totalPrice = count * fprice;
  }
  return totalPrice;
}
