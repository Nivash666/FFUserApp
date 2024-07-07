import '../database.dart';

class InventoryTable extends SupabaseTable<InventoryRow> {
  @override
  String get tableName => 'inventory';

  @override
  InventoryRow createRow(Map<String, dynamic> data) => InventoryRow(data);
}

class InventoryRow extends SupabaseDataRow {
  InventoryRow(super.data);

  @override
  SupabaseTable get table => InventoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  int? get shopId => getField<int>('shop_id');
  set shopId(int? value) => setField<int>('shop_id', value);

  double? get inStock => getField<double>('in_stock');
  set inStock(double? value) => setField<double>('in_stock', value);

  DateTime? get lastUpdatedTime => getField<DateTime>('last_updated_time');
  set lastUpdatedTime(DateTime? value) =>
      setField<DateTime>('last_updated_time', value);

  String? get size => getField<String>('size');
  set size(String? value) => setField<String>('size', value);

  String? get color => getField<String>('color');
  set color(String? value) => setField<String>('color', value);
}
