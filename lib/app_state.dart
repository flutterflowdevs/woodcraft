import 'package:flutter/material.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _totalAmount = prefs.getDouble('ff_totalAmount') ?? _totalAmount;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _selectOption = 0;
  int get selectOption => _selectOption;
  set selectOption(int _value) {
    _selectOption = _value;
  }

  String _selectedCategory = 'All';
  String get selectedCategory => _selectedCategory;
  set selectedCategory(String _value) {
    _selectedCategory = _value;
  }

  int _totalCount = 0;
  int get totalCount => _totalCount;
  set totalCount(int _value) {
    _totalCount = _value;
  }

  String _profilePic = '';
  String get profilePic => _profilePic;
  set profilePic(String _value) {
    _profilePic = _value;
  }

  double _shippingCharges = 1000;
  double get shippingCharges => _shippingCharges;
  set shippingCharges(double _value) {
    _shippingCharges = _value;
  }

  double _totalAmount = 0.0;
  double get totalAmount => _totalAmount;
  set totalAmount(double _value) {
    _totalAmount = _value;
    prefs.setDouble('ff_totalAmount', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
