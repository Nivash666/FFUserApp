import '../database.dart';

class DressRecommendationTable extends SupabaseTable<DressRecommendationRow> {
  @override
  String get tableName => 'dress_recommendation';

  @override
  DressRecommendationRow createRow(Map<String, dynamic> data) =>
      DressRecommendationRow(data);
}

class DressRecommendationRow extends SupabaseDataRow {
  DressRecommendationRow(super.data);

  @override
  SupabaseTable get table => DressRecommendationTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  int? get shopId => getField<int>('shop_id');
  set shopId(int? value) => setField<int>('shop_id', value);
}
