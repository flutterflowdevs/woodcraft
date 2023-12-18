import '../database.dart';

class CheckoutTable extends SupabaseTable<CheckoutRow> {
  @override
  String get tableName => 'checkout';

  @override
  CheckoutRow createRow(Map<String, dynamic> data) => CheckoutRow(data);
}

class CheckoutRow extends SupabaseDataRow {
  CheckoutRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CheckoutTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get furnitureId => getField<int>('furniture_id');
  set furnitureId(int? value) => setField<int>('furniture_id', value);

  int? get totalAmount => getField<int>('total_amount');
  set totalAmount(int? value) => setField<int>('total_amount', value);

  int? get userAddressId => getField<int>('user_address_id');
  set userAddressId(int? value) => setField<int>('user_address_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
