import '../database.dart';

class OrdersTable extends SupabaseTable<OrdersRow> {
  @override
  String get tableName => 'orders';

  @override
  OrdersRow createRow(Map<String, dynamic> data) => OrdersRow(data);
}

class OrdersRow extends SupabaseDataRow {
  OrdersRow(super.data);

  @override
  SupabaseTable get table => OrdersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get timeFrom => getField<DateTime>('time_from');
  set timeFrom(DateTime? value) => setField<DateTime>('time_from', value);

  DateTime? get timeTo => getField<DateTime>('time_to');
  set timeTo(DateTime? value) => setField<DateTime>('time_to', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get shopId => getField<int>('shop_id');
  set shopId(int? value) => setField<int>('shop_id', value);

  DateTime? get reservedAt => getField<DateTime>('reserved_at');
  set reservedAt(DateTime? value) => setField<DateTime>('reserved_at', value);

  DateTime? get bookedAt => getField<DateTime>('booked_at');
  set bookedAt(DateTime? value) => setField<DateTime>('booked_at', value);

  String? get staffId => getField<String>('staff_id');
  set staffId(String? value) => setField<String>('staff_id', value);

  bool? get checkin => getField<bool>('checkin');
  set checkin(bool? value) => setField<bool>('checkin', value);
}
