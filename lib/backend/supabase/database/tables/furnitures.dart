import '../database.dart';

class FurnituresTable extends SupabaseTable<FurnituresRow> {
  @override
  String get tableName => 'furnitures';

  @override
  FurnituresRow createRow(Map<String, dynamic> data) => FurnituresRow(data);
}

class FurnituresRow extends SupabaseDataRow {
  FurnituresRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FurnituresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get furnitureName => getField<String>('furniture_name');
  set furnitureName(String? value) => setField<String>('furniture_name', value);

  String? get furnitureSize => getField<String>('furniture_size');
  set furnitureSize(String? value) => setField<String>('furniture_size', value);

  String? get furnitureDescription => getField<String>('furniture_description');
  set furnitureDescription(String? value) =>
      setField<String>('furniture_description', value);

  String? get category1 => getField<String>('category_1');
  set category1(String? value) => setField<String>('category_1', value);

  String? get category2 => getField<String>('category_2');
  set category2(String? value) => setField<String>('category_2', value);

  int? get furniturePrice => getField<int>('furniture_price');
  set furniturePrice(int? value) => setField<int>('furniture_price', value);

  String? get keyFeature => getField<String>('key_feature');
  set keyFeature(String? value) => setField<String>('key_feature', value);

  String? get environmentMaterial => getField<String>('environment_material');
  set environmentMaterial(String? value) =>
      setField<String>('environment_material', value);

  String? get goodToKnow => getField<String>('good_to_know');
  set goodToKnow(String? value) => setField<String>('good_to_know', value);

  int? get sort1 => getField<int>('sort_1');
  set sort1(int? value) => setField<int>('sort_1', value);

  int? get sort2 => getField<int>('sort_2');
  set sort2(int? value) => setField<int>('sort_2', value);

  int? get sort3 => getField<int>('sort_3');
  set sort3(int? value) => setField<int>('sort_3', value);

  String? get arImage => getField<String>('ar_image');
  set arImage(String? value) => setField<String>('ar_image', value);

  String? get defaultImage => getField<String>('default_image');
  set defaultImage(String? value) => setField<String>('default_image', value);

  List<String> get field360Images => getListField<String>('360_images');
  set field360Images(List<String>? value) =>
      setListField<String>('360_images', value);
}
