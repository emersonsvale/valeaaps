import '../database.dart';

class PropostaTable extends SupabaseTable<PropostaRow> {
  @override
  String get tableName => 'proposta';

  @override
  PropostaRow createRow(Map<String, dynamic> data) => PropostaRow(data);
}

class PropostaRow extends SupabaseDataRow {
  PropostaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropostaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get tipoProjeto => getField<String>('tipo_projeto');
  set tipoProjeto(String? value) => setField<String>('tipo_projeto', value);

  String? get nomeCliente => getField<String>('nome_cliente');
  set nomeCliente(String? value) => setField<String>('nome_cliente', value);

  double? get valorBruto => getField<double>('valor_bruto');
  set valorBruto(double? value) => setField<double>('valor_bruto', value);

  double? get valorFinal => getField<double>('valor_final');
  set valorFinal(double? value) => setField<double>('valor_final', value);

  int? get prazoDias => getField<int>('prazo_dias');
  set prazoDias(int? value) => setField<int>('prazo_dias', value);

  String? get telefoneCliente => getField<String>('telefone_cliente');
  set telefoneCliente(String? value) =>
      setField<String>('telefone_cliente', value);

  String? get emailCliente => getField<String>('email_cliente');
  set emailCliente(String? value) => setField<String>('email_cliente', value);

  List<String> get tiposServicosEnuns =>
      getListField<String>('tipos_servicos_enuns');
  set tiposServicosEnuns(List<String>? value) =>
      setListField<String>('tipos_servicos_enuns', value);

  List<String> get entregas => getListField<String>('entregas');
  set entregas(List<String>? value) => setListField<String>('entregas', value);

  String? get maisInfo => getField<String>('mais_info');
  set maisInfo(String? value) => setField<String>('mais_info', value);

  String? get nomeProejeto => getField<String>('nome_proejeto');
  set nomeProejeto(String? value) => setField<String>('nome_proejeto', value);

  String? get diasCorridosOuUlteis =>
      getField<String>('dias_corridos_ou_ulteis');
  set diasCorridosOuUlteis(String? value) =>
      setField<String>('dias_corridos_ou_ulteis', value);

  String? get slug => getField<String>('slug');
  set slug(String? value) => setField<String>('slug', value);
}
