import '../database.dart';

class FavoritesListTable extends SupabaseTable<FavoritesListRow> {
  @override
  String get tableName => 'favoritesList';

  @override
  FavoritesListRow createRow(Map<String, dynamic> data) =>
      FavoritesListRow(data);
}

class FavoritesListRow extends SupabaseDataRow {
  FavoritesListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FavoritesListTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get furnitureId => getField<int>('furniture_id');
  set furnitureId(int? value) => setField<int>('furniture_id', value);

  String? get authId => getField<String>('authId');
  set authId(String? value) => setField<String>('authId', value);
}
