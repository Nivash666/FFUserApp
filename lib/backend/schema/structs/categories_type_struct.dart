// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriesTypeStruct extends BaseStruct {
  CategoriesTypeStruct({
    String? categoryName,
    int? categoryId,
  })  : _categoryName = categoryName,
        _categoryId = categoryId;

  // "category_name" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  set categoryName(String? val) => _categoryName = val;

  bool hasCategoryName() => _categoryName != null;

  // "category_id" field.
  int? _categoryId;
  int get categoryId => _categoryId ?? 0;
  set categoryId(int? val) => _categoryId = val;

  void incrementCategoryId(int amount) => categoryId = categoryId + amount;

  bool hasCategoryId() => _categoryId != null;

  static CategoriesTypeStruct fromMap(Map<String, dynamic> data) =>
      CategoriesTypeStruct(
        categoryName: data['category_name'] as String?,
        categoryId: castToType<int>(data['category_id']),
      );

  static CategoriesTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? CategoriesTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'category_name': _categoryName,
        'category_id': _categoryId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category_name': serializeParam(
          _categoryName,
          ParamType.String,
        ),
        'category_id': serializeParam(
          _categoryId,
          ParamType.int,
        ),
      }.withoutNulls;

  static CategoriesTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoriesTypeStruct(
        categoryName: deserializeParam(
          data['category_name'],
          ParamType.String,
          false,
        ),
        categoryId: deserializeParam(
          data['category_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CategoriesTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoriesTypeStruct &&
        categoryName == other.categoryName &&
        categoryId == other.categoryId;
  }

  @override
  int get hashCode => const ListEquality().hash([categoryName, categoryId]);
}

CategoriesTypeStruct createCategoriesTypeStruct({
  String? categoryName,
  int? categoryId,
}) =>
    CategoriesTypeStruct(
      categoryName: categoryName,
      categoryId: categoryId,
    );
