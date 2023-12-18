import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _homebariconsFamily = 'Homebaricons';
  static const String _heartIconFamily = 'HeartIcon';
  static const String _detailsIconFamily = 'DetailsIcon';
  static const String _myFlutterAppFamily = 'MyFlutterApp';
  static const String _sortFamily = 'Sort';
  static const String _360Family = '360';

  // Homebaricons
  static const IconData kstar =
      IconData(0xe800, fontFamily: _homebariconsFamily);
  static const IconData ksofa =
      IconData(0xe801, fontFamily: _homebariconsFamily);
  static const IconData ktable =
      IconData(0xe802, fontFamily: _homebariconsFamily);
  static const IconData kchairicon =
      IconData(0xe803, fontFamily: _homebariconsFamily);
  static const IconData kbed =
      IconData(0xe804, fontFamily: _homebariconsFamily);

  // HeartIcon
  static const IconData kdil = IconData(0xe800, fontFamily: _heartIconFamily);

  // DetailsIcon
  static const IconData kmyDetails =
      IconData(0xe800, fontFamily: _detailsIconFamily);
  static const IconData kbell =
      IconData(0xe801, fontFamily: _detailsIconFamily);

  // MyFlutterApp
  static const IconData khomeIcon =
      IconData(0xe800, fontFamily: _myFlutterAppFamily);

  // Sort
  static const IconData ksort = IconData(0xe800, fontFamily: _sortFamily);

  // 360
  static const IconData kicon360Part3 =
      IconData(0xe802, fontFamily: _360Family);
}
