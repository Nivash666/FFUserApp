// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShoppingCartStruct extends BaseStruct {
  ShoppingCartStruct({
    int? productid,
    int? quantity,
    String? name,
    int? shopid,
    int? subCategory,
    double? price,
  })  : _productid = productid,
        _quantity = quantity,
        _name = name,
        _shopid = shopid,
        _subCategory = subCategory,
        _price = price;

  // "productid" field.
  int? _productid;
  int get productid => _productid ?? 0;
  set productid(int? val) => _productid = val;

  void incrementProductid(int amount) => productid = productid + amount;

  bool hasProductid() => _productid != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "shopid" field.
  int? _shopid;
  int get shopid => _shopid ?? 0;
  set shopid(int? val) => _shopid = val;

  void incrementShopid(int amount) => shopid = shopid + amount;

  bool hasShopid() => _shopid != null;

  // "sub_category" field.
  int? _subCategory;
  int get subCategory => _subCategory ?? 0;
  set subCategory(int? val) => _subCategory = val;

  void incrementSubCategory(int amount) => subCategory = subCategory + amount;

  bool hasSubCategory() => _subCategory != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  static ShoppingCartStruct fromMap(Map<String, dynamic> data) =>
      ShoppingCartStruct(
        productid: castToType<int>(data['productid']),
        quantity: castToType<int>(data['quantity']),
        name: data['name'] as String?,
        shopid: castToType<int>(data['shopid']),
        subCategory: castToType<int>(data['sub_category']),
        price: castToType<double>(data['price']),
      );

  static ShoppingCartStruct? maybeFromMap(dynamic data) => data is Map
      ? ShoppingCartStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'productid': _productid,
        'quantity': _quantity,
        'name': _name,
        'shopid': _shopid,
        'sub_category': _subCategory,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'productid': serializeParam(
          _productid,
          ParamType.int,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'shopid': serializeParam(
          _shopid,
          ParamType.int,
        ),
        'sub_category': serializeParam(
          _subCategory,
          ParamType.int,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static ShoppingCartStruct fromSerializableMap(Map<String, dynamic> data) =>
      ShoppingCartStruct(
        productid: deserializeParam(
          data['productid'],
          ParamType.int,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        shopid: deserializeParam(
          data['shopid'],
          ParamType.int,
          false,
        ),
        subCategory: deserializeParam(
          data['sub_category'],
          ParamType.int,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ShoppingCartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ShoppingCartStruct &&
        productid == other.productid &&
        quantity == other.quantity &&
        name == other.name &&
        shopid == other.shopid &&
        subCategory == other.subCategory &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([productid, quantity, name, shopid, subCategory, price]);
}

ShoppingCartStruct createShoppingCartStruct({
  int? productid,
  int? quantity,
  String? name,
  int? shopid,
  int? subCategory,
  double? price,
}) =>
    ShoppingCartStruct(
      productid: productid,
      quantity: quantity,
      name: name,
      shopid: shopid,
      subCategory: subCategory,
      price: price,
    );
