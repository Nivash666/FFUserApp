import '../database.dart';

class ProductsTable extends SupabaseTable<ProductsRow> {
  @override
  String get tableName => 'products';

  @override
  ProductsRow createRow(Map<String, dynamic> data) => ProductsRow(data);
}

class ProductsRow extends SupabaseDataRow {
  ProductsRow(super.data);

  @override
  SupabaseTable get table => ProductsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get shopId => getField<int>('shop_id');
  set shopId(int? value) => setField<int>('shop_id', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  double? get quantity => getField<double>('quantity');
  set quantity(double? value) => setField<double>('quantity', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  int? get subCategory => getField<int>('sub_category');
  set subCategory(int? value) => setField<int>('sub_category', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get searchVector => getField<String>('search_vector');
  set searchVector(String? value) => setField<String>('search_vector', value);
}
