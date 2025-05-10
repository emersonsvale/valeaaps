import '../database.dart';

class ClientesParceirosTable extends SupabaseTable<ClientesParceirosRow> {
  @override
  String get tableName => 'clientes_parceiros';

  @override
  ClientesParceirosRow createRow(Map<String, dynamic> data) =>
      ClientesParceirosRow(data);
}

class ClientesParceirosRow extends SupabaseDataRow {
  ClientesParceirosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ClientesParceirosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);
}
