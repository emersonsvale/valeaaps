import '../database.dart';

class AcessTable extends SupabaseTable<AcessRow> {
  @override
  String get tableName => 'acess';

  @override
  AcessRow createRow(Map<String, dynamic> data) => AcessRow(data);
}

class AcessRow extends SupabaseDataRow {
  AcessRow(super.data);

  @override
  SupabaseTable get table => AcessTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get number => getField<int>('number');
  set number(int? value) => setField<int>('number', value);
}
