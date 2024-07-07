import '../database.dart';

class ShoppingCartTable extends SupabaseTable<ShoppingCartRow> {
  @override
  String get tableName => 'shopping_cart';

  @override
  ShoppingCartRow createRow(Map<String, dynamic> data) => ShoppingCartRow(data);
}

class ShoppingCartRow extends SupabaseDataRow {
  ShoppingCartRow(super.data);

  @override
  SupabaseTable get table => ShoppingCartTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  double? get quantity => getField<double>('quantity');
  set quantity(double? value) => setField<double>('quantity', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get shopId => getField<int>('shop_id');
  set shopId(int? value) => setField<int>('shop_id', value);
}
