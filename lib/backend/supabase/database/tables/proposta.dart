import '../database.dart';

class PropostaTable extends SupabaseTable<PropostaRow> {
  @override
  String get tableName => 'proposta';

  @override
  PropostaRow createRow(Map<String, dynamic> data) => PropostaRow(data);
}

class PropostaRow extends SupabaseDataRow {
  PropostaRow(super.data);

  @override
  SupabaseTable get table => PropostaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
