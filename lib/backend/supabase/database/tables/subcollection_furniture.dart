import '../database.dart';

class SubcollectionFurnitureTable
    extends SupabaseTable<SubcollectionFurnitureRow> {
  @override
  String get tableName => 'subcollection_furniture';

  @override
  SubcollectionFurnitureRow createRow(Map<String, dynamic> data) =>
      SubcollectionFurnitureRow(data);
}

class SubcollectionFurnitureRow extends SupabaseDataRow {
  SubcollectionFurnitureRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SubcollectionFurnitureTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get clrName => getField<String>('clr_name');
  set clrName(String? value) => setField<String>('clr_name', value);

  String? get clrCode => getField<String>('clr_code');
  set clrCode(String? value) => setField<String>('clr_code', value);

  int? get furnitureId => getField<int>('furniture_id');
  set furnitureId(int? value) => setField<int>('furniture_id', value);

  List<String> get clrImage => getListField<String>('clr_image');
  set clrImage(List<String>? value) => setListField<String>('clr_image', value);
}
