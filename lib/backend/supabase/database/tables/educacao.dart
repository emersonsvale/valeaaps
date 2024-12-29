import '../database.dart';

class EducacaoTable extends SupabaseTable<EducacaoRow> {
  @override
  String get tableName => 'educacao';

  @override
  EducacaoRow createRow(Map<String, dynamic> data) => EducacaoRow(data);
}

class EducacaoRow extends SupabaseDataRow {
  EducacaoRow(super.data);

  @override
  SupabaseTable get table => EducacaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  DateTime? get datainicio => getField<DateTime>('datainicio');
  set datainicio(DateTime? value) => setField<DateTime>('datainicio', value);

  DateTime? get datafim => getField<DateTime>('datafim');
  set datafim(DateTime? value) => setField<DateTime>('datafim', value);

  String? get descricao => getField<String>('descrição');
  set descricao(String? value) => setField<String>('descrição', value);
}
