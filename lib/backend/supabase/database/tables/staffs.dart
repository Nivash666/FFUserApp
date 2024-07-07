import '../database.dart';

class StaffsTable extends SupabaseTable<StaffsRow> {
  @override
  String get tableName => 'Staffs';

  @override
  StaffsRow createRow(Map<String, dynamic> data) => StaffsRow(data);
}

class StaffsRow extends SupabaseDataRow {
  StaffsRow(super.data);

  @override
  SupabaseTable get table => StaffsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get subCategoryId => getField<int>('sub_category_id');
  set subCategoryId(int? value) => setField<int>('sub_category_id', value);

  int? get shopId => getField<int>('shop_id');
  set shopId(int? value) => setField<int>('shop_id', value);

  String? get role => getField<String>('Role');
  set role(String? value) => setField<String>('Role', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get externalId => getField<String>('external_id');
  set externalId(String? value) => setField<String>('external_id', value);
}
