import '../database.dart';

class ProjetosTable extends SupabaseTable<ProjetosRow> {
  @override
  String get tableName => 'projetos';

  @override
  ProjetosRow createRow(Map<String, dynamic> data) => ProjetosRow(data);
}

class ProjetosRow extends SupabaseDataRow {
  ProjetosRow(super.data);

  @override
  SupabaseTable get table => ProjetosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  List<String> get imgens => getListField<String>('imgens');
  set imgens(List<String>? value) => setListField<String>('imgens', value);

  String? get capa => getField<String>('capa');
  set capa(String? value) => setField<String>('capa', value);

  String? get h2 => getField<String>('h2');
  set h2(String? value) => setField<String>('h2', value);

  List<int> get categoriaProjeto => getListField<int>('categoria_projeto');
  set categoriaProjeto(List<int>? value) =>
      setListField<int>('categoria_projeto', value);

  List<int> get ferramentas => getListField<int>('ferramentas');
  set ferramentas(List<int>? value) => setListField<int>('ferramentas', value);

  int? get likes => getField<int>('likes');
  set likes(int? value) => setField<int>('likes', value);
}
