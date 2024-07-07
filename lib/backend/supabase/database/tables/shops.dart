import '../database.dart';

class ShopsTable extends SupabaseTable<ShopsRow> {
  @override
  String get tableName => 'shops';

  @override
  ShopsRow createRow(Map<String, dynamic> data) => ShopsRow(data);
}

class ShopsRow extends SupabaseDataRow {
  ShopsRow(super.data);

  @override
  SupabaseTable get table => ShopsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  DateTime? get openTo => getField<DateTime>('open_to');
  set openTo(DateTime? value) => setField<DateTime>('open_to', value);

  DateTime? get closeTo => getField<DateTime>('close_to');
  set closeTo(DateTime? value) => setField<DateTime>('close_to', value);

  int? get blockMinute => getField<int>('block_minute');
  set blockMinute(int? value) => setField<int>('block_minute', value);

  int? get bufferTime => getField<int>('buffer_time');
  set bufferTime(int? value) => setField<int>('buffer_time', value);

  String? get searchVector => getField<String>('search_vector');
  set searchVector(String? value) => setField<String>('search_vector', value);
}
