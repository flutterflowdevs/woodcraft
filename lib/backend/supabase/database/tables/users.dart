import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get displayName => getField<String>('display_name');
  set displayName(String? value) => setField<String>('display_name', value);

  String? get displayImage => getField<String>('display_image');
  set displayImage(String? value) => setField<String>('display_image', value);

  String? get authId => getField<String>('auth_id');
  set authId(String? value) => setField<String>('auth_id', value);

  int? get usersAddressId => getField<int>('users_address_id');
  set usersAddressId(int? value) => setField<int>('users_address_id', value);

  List<String> get isFavorite => getListField<String>('is_favorite');
  set isFavorite(List<String>? value) =>
      setListField<String>('is_favorite', value);
}
