import '../database.dart';

class SelectedDressTable extends SupabaseTable<SelectedDressRow> {
  @override
  String get tableName => 'selected_dress';

  @override
  SelectedDressRow createRow(Map<String, dynamic> data) =>
      SelectedDressRow(data);
}

class SelectedDressRow extends SupabaseDataRow {
  SelectedDressRow(super.data);

  @override
  SupabaseTable get table => SelectedDressTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  int? get shopId => getField<int>('shop_id');
  set shopId(int? value) => setField<int>('shop_id', value);

  String? get dressStatus => getField<String>('dress_status');
  set dressStatus(String? value) => setField<String>('dress_status', value);
}
