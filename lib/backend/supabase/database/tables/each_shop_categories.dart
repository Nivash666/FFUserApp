import '../database.dart';

class EachShopCategoriesTable extends SupabaseTable<EachShopCategoriesRow> {
  @override
  String get tableName => 'each_shop_categories';

  @override
  EachShopCategoriesRow createRow(Map<String, dynamic> data) =>
      EachShopCategoriesRow(data);
}

class EachShopCategoriesRow extends SupabaseDataRow {
  EachShopCategoriesRow(super.data);

  @override
  SupabaseTable get table => EachShopCategoriesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  int? get shopId => getField<int>('shop_id');
  set shopId(int? value) => setField<int>('shop_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get searchVector => getField<String>('search_vector');
  set searchVector(String? value) => setField<String>('search_vector', value);
}
