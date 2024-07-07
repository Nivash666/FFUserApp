import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      _productid = prefs.getInt('ff_productid') ?? _productid;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _productid = 0;
  int get productid => _productid;
  set productid(int value) {
    _productid = value;
    prefs.setInt('ff_productid', value);
  }

  List<ShoppingCartStruct> _ShoppingCart = [];
  List<ShoppingCartStruct> get ShoppingCart => _ShoppingCart;
  set ShoppingCart(List<ShoppingCartStruct> value) {
    _ShoppingCart = value;
  }

  void addToShoppingCart(ShoppingCartStruct value) {
    ShoppingCart.add(value);
  }

  void removeFromShoppingCart(ShoppingCartStruct value) {
    ShoppingCart.remove(value);
  }

  void removeAtIndexFromShoppingCart(int index) {
    ShoppingCart.removeAt(index);
  }

  void updateShoppingCartAtIndex(
    int index,
    ShoppingCartStruct Function(ShoppingCartStruct) updateFn,
  ) {
    ShoppingCart[index] = updateFn(_ShoppingCart[index]);
  }

  void insertAtIndexInShoppingCart(int index, ShoppingCartStruct value) {
    ShoppingCart.insert(index, value);
  }

  int _currentshopid = 0;
  int get currentshopid => _currentshopid;
  set currentshopid(int value) {
    _currentshopid = value;
  }
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
