import '../database.dart';

class FerramentasTable extends SupabaseTable<FerramentasRow> {
  @override
  String get tableName => 'ferramentas';

  @override
  FerramentasRow createRow(Map<String, dynamic> data) => FerramentasRow(data);
}

class FerramentasRow extends SupabaseDataRow {
  FerramentasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FerramentasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  double? get dominio => getField<double>('dominio');
  set dominio(double? value) => setField<double>('dominio', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);
}
