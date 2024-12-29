import '/backend/supabase/supabase.dart';
import '/components/comp_ferramenta_widget.dart';
import '/components/menu_web_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  String? nomeFerramenta = 'Supabase';

  String? sobreFerramenta =
      'Supabase é uma plataforma de desenvolvimento de back-end que facilita a criação de aplicativos modernos. É uma alternativa de código aberto ao Firebase do Google e oferece um conjunto completo de ferramentas para desenvolvedores';

  List<ClientesParceirosRow> empresas = [];
  void addToEmpresas(ClientesParceirosRow item) => empresas.add(item);
  void removeFromEmpresas(ClientesParceirosRow item) => empresas.remove(item);
  void removeAtIndexFromEmpresas(int index) => empresas.removeAt(index);
  void insertAtIndexInEmpresas(int index, ClientesParceirosRow item) =>
      empresas.insert(index, item);
  void updateEmpresasAtIndex(
          int index, Function(ClientesParceirosRow) updateFn) =>
      empresas[index] = updateFn(empresas[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Home widget.
  List<ClientesParceirosRow>? parciro;
  // Model for menuWeb component.
  late MenuWebModel menuWebModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // Models for comp_ferramenta dynamic component.
  late FlutterFlowDynamicModels<CompFerramentaModel> compFerramentaModels;

  @override
  void initState(BuildContext context) {
    menuWebModel = createModel(context, () => MenuWebModel());
    compFerramentaModels =
        FlutterFlowDynamicModels(() => CompFerramentaModel());
  }

  @override
  void dispose() {
    menuWebModel.dispose();
    compFerramentaModels.dispose();
  }
}
