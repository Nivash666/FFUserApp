import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://fqdfiyyvvxljwqrlcgow.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZxZGZpeXl2dnhsandxcmxjZ293Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg3NTg5MTIsImV4cCI6MjAyNDMzNDkxMn0._JA3m0lK2fl9BncUsQozEK-dhCFOtgk3YhmJmKymV5k';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
