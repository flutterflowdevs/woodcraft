import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

List<String> convertIntToStringList(
  List<String> userFavList,
  int favId,
) {
  print(userFavList);

  if (!userFavList.contains(favId.toString())) {
    userFavList.add(favId.toString());
  }
  print(userFavList);
  return userFavList;
}

List<String> convertIntToStringListCopy(
  List<String> userFavList,
  int favId,
) {
  print(userFavList);

  if (userFavList.contains(favId.toString())) {
    userFavList.remove(favId.toString());
  }
  print(userFavList);
  return userFavList;
}

String getImage(String imgSTR) {
  return imgSTR;
}

int getInt(String favId) {
  return int.parse(favId);
}

bool newCustomFunction(
  List<CartsCollectionRow> records,
  int furnitureId,
) {
  // if (records.isEmpty) {
  //   return false;
  // }

  for (int i = 0; i < records.length; i++) {
    if (records[i].furnitureId == furnitureId) {
      return true;
    }
  }
  print(furnitureId);
  return false;
}

bool newCustomFunction2(
  List<FavoritesListRow> favList,
  int furnitureID,
) {
  // if (records.isEmpty) {
  //   return false;
  // }
  print(favList);
  for (int i = 0; i < favList.length; i++) {
    if (favList[i].furnitureId == furnitureID) {
      return true;
    }
  }
  print(furnitureID);
  return false;
}

double getTotalCartAmount(
  List<CartsCollectionRow> listCartItem,
  List<CartsCollectionRow> newUpdatedCartList,
  int updatedCartItemId,
) {
  double totalAmount = 0.0;
  listCartItem.forEach((e) {
    if (e.id != updatedCartItemId) {
      totalAmount = totalAmount + e.amt!;
    }
  });

  newUpdatedCartList.forEach((e) {
    totalAmount = totalAmount + e.amt!;
  });
  return totalAmount;
}
