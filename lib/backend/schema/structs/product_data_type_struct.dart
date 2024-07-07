// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductDataTypeStruct extends BaseStruct {
  ProductDataTypeStruct({
    String? name,
    int? quantity,
    int? price,
    int? productid,
  })  : _name = name,
        _quantity = quantity,
        _price = price,
        _productid = productid;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;

  void incrementPrice(int amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "productid" field.
  int? _productid;
  int get productid => _productid ?? 0;
  set productid(int? val) => _productid = val;

  void incrementProductid(int amount) => productid = productid + amount;

  bool hasProductid() => _productid != null;

  static ProductDataTypeStruct fromMap(Map<String, dynamic> data) =>
      ProductDataTypeStruct(
        name: data['name'] as String?,
        quantity: castToType<int>(data['quantity']),
        price: castToType<int>(data['price']),
        productid: castToType<int>(data['productid']),
      );

  static ProductDataTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductDataTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'quantity': _quantity,
        'price': _price,
        'productid': _productid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'productid': serializeParam(
          _productid,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProductDataTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductDataTypeStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        productid: deserializeParam(
          data['productid'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProductDataTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductDataTypeStruct &&
        name == other.name &&
        quantity == other.quantity &&
        price == other.price &&
        productid == other.productid;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, quantity, price, productid]);
}

ProductDataTypeStruct createProductDataTypeStruct({
  String? name,
  int? quantity,
  int? price,
  int? productid,
}) =>
    ProductDataTypeStruct(
      name: name,
      quantity: quantity,
      price: price,
      productid: productid,
    );
