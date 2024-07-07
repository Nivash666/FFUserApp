// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchDataStruct extends BaseStruct {
  SearchDataStruct({
    String? shopName,
    List<SearchProductValuesStruct>? productData,
  })  : _shopName = shopName,
        _productData = productData;

  // "shop_name" field.
  String? _shopName;
  String get shopName => _shopName ?? '';
  set shopName(String? val) => _shopName = val;

  bool hasShopName() => _shopName != null;

  // "product_data" field.
  List<SearchProductValuesStruct>? _productData;
  List<SearchProductValuesStruct> get productData => _productData ?? const [];
  set productData(List<SearchProductValuesStruct>? val) => _productData = val;

  void updateProductData(Function(List<SearchProductValuesStruct>) updateFn) {
    updateFn(_productData ??= []);
  }

  bool hasProductData() => _productData != null;

  static SearchDataStruct fromMap(Map<String, dynamic> data) =>
      SearchDataStruct(
        shopName: data['shop_name'] as String?,
        productData: getStructList(
          data['product_data'],
          SearchProductValuesStruct.fromMap,
        ),
      );

  static SearchDataStruct? maybeFromMap(dynamic data) => data is Map
      ? SearchDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'shop_name': _shopName,
        'product_data': _productData?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'shop_name': serializeParam(
          _shopName,
          ParamType.String,
        ),
        'product_data': serializeParam(
          _productData,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static SearchDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      SearchDataStruct(
        shopName: deserializeParam(
          data['shop_name'],
          ParamType.String,
          false,
        ),
        productData: deserializeStructParam<SearchProductValuesStruct>(
          data['product_data'],
          ParamType.DataStruct,
          true,
          structBuilder: SearchProductValuesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SearchDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SearchDataStruct &&
        shopName == other.shopName &&
        listEquality.equals(productData, other.productData);
  }

  @override
  int get hashCode => const ListEquality().hash([shopName, productData]);
}

SearchDataStruct createSearchDataStruct({
  String? shopName,
}) =>
    SearchDataStruct(
      shopName: shopName,
    );
