import '../database.dart';

class CartsCollectionTable extends SupabaseTable<CartsCollectionRow> {
  @override
  String get tableName => 'cartsCollection';

  @override
  CartsCollectionRow createRow(Map<String, dynamic> data) =>
      CartsCollectionRow(data);
}

class CartsCollectionRow extends SupabaseDataRow {
  CartsCollectionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CartsCollectionTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get furnitureId => getField<int>('furniture_id');
  set furnitureId(int? value) => setField<int>('furniture_id', value);

  int? get count => getField<int>('count');
  set count(int? value) => setField<int>('count', value);

  int? get amt => getField<int>('amt');
  set amt(int? value) => setField<int>('amt', value);

  String? get authId => getField<String>('auth_id');
  set authId(String? value) => setField<String>('auth_id', value);
}
