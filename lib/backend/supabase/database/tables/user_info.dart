import '../database.dart';

class UserInfoTable extends SupabaseTable<UserInfoRow> {
  @override
  String get tableName => 'user_info';

  @override
  UserInfoRow createRow(Map<String, dynamic> data) => UserInfoRow(data);
}

class UserInfoRow extends SupabaseDataRow {
  UserInfoRow(super.data);

  @override
  SupabaseTable get table => UserInfoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get oneSignalPlayerId => getField<String>('one_signal_player_id');
  set oneSignalPlayerId(String? value) =>
      setField<String>('one_signal_player_id', value);
}
