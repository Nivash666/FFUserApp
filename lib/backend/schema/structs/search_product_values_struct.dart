// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchProductValuesStruct extends BaseStruct {
  SearchProductValuesStruct({
    String? productName,
    String? productDescription,
    int? productPrice,
  })  : _productName = productName,
        _productDescription = productDescription,
        _productPrice = productPrice;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "product_description" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  set productDescription(String? val) => _productDescription = val;

  bool hasProductDescription() => _productDescription != null;

  // "product_price" field.
  int? _productPrice;
  int get productPrice => _productPrice ?? 0;
  set productPrice(int? val) => _productPrice = val;

  void incrementProductPrice(int amount) =>
      productPrice = productPrice + amount;

  bool hasProductPrice() => _productPrice != null;

  static SearchProductValuesStruct fromMap(Map<String, dynamic> data) =>
      SearchProductValuesStruct(
        productName: data['product_name'] as String?,
        productDescription: data['product_description'] as String?,
        productPrice: castToType<int>(data['product_price']),
      );

  static SearchProductValuesStruct? maybeFromMap(dynamic data) => data is Map
      ? SearchProductValuesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'product_name': _productName,
        'product_description': _productDescription,
        'product_price': _productPrice,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product_name': serializeParam(
          _productName,
          ParamType.String,
        ),
        'product_description': serializeParam(
          _productDescription,
          ParamType.String,
        ),
        'product_price': serializeParam(
          _productPrice,
          ParamType.int,
        ),
      }.withoutNulls;

  static SearchProductValuesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SearchProductValuesStruct(
        productName: deserializeParam(
          data['product_name'],
          ParamType.String,
          false,
        ),
        productDescription: deserializeParam(
          data['product_description'],
          ParamType.String,
          false,
        ),
        productPrice: deserializeParam(
          data['product_price'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SearchProductValuesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SearchProductValuesStruct &&
        productName == other.productName &&
        productDescription == other.productDescription &&
        productPrice == other.productPrice;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([productName, productDescription, productPrice]);
}

SearchProductValuesStruct createSearchProductValuesStruct({
  String? productName,
  String? productDescription,
  int? productPrice,
}) =>
    SearchProductValuesStruct(
      productName: productName,
      productDescription: productDescription,
      productPrice: productPrice,
    );
