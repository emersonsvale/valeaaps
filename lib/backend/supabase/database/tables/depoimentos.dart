import '../database.dart';

class DepoimentosTable extends SupabaseTable<DepoimentosRow> {
  @override
  String get tableName => 'depoimentos';

  @override
  DepoimentosRow createRow(Map<String, dynamic> data) => DepoimentosRow(data);
}

class DepoimentosRow extends SupabaseDataRow {
  DepoimentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DepoimentosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get texto => getField<String>('texto');
  set texto(String? value) => setField<String>('texto', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get empresa => getField<String>('empresa');
  set empresa(String? value) => setField<String>('empresa', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);
}
