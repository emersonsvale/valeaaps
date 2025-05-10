import '../database.dart';

class CategoriasProejtoTable extends SupabaseTable<CategoriasProejtoRow> {
  @override
  String get tableName => 'categorias_proejto';

  @override
  CategoriasProejtoRow createRow(Map<String, dynamic> data) =>
      CategoriasProejtoRow(data);
}

class CategoriasProejtoRow extends SupabaseDataRow {
  CategoriasProejtoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoriasProejtoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);
}
