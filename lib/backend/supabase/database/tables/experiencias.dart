import '../database.dart';

class ExperienciasTable extends SupabaseTable<ExperienciasRow> {
  @override
  String get tableName => 'experiencias';

  @override
  ExperienciasRow createRow(Map<String, dynamic> data) => ExperienciasRow(data);
}

class ExperienciasRow extends SupabaseDataRow {
  ExperienciasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExperienciasTable();

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

  String? get cargo => getField<String>('cargo');
  set cargo(String? value) => setField<String>('cargo', value);
}
