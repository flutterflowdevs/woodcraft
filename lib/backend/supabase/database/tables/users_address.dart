import '../database.dart';

class UsersAddressTable extends SupabaseTable<UsersAddressRow> {
  @override
  String get tableName => 'users_address';

  @override
  UsersAddressRow createRow(Map<String, dynamic> data) => UsersAddressRow(data);
}

class UsersAddressRow extends SupabaseDataRow {
  UsersAddressRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersAddressTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get fullAddress => getField<String>('full_address');
  set fullAddress(String? value) => setField<String>('full_address', value);

  String? get phoneNumber => getField<String>('phone_number');
  set phoneNumber(String? value) => setField<String>('phone_number', value);

  String? get nameOnAddress => getField<String>('name_on_address');
  set nameOnAddress(String? value) =>
      setField<String>('name_on_address', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get differentEmail => getField<String>('different_email');
  set differentEmail(String? value) =>
      setField<String>('different_email', value);

  String? get authId => getField<String>('auth_id');
  set authId(String? value) => setField<String>('auth_id', value);
}
