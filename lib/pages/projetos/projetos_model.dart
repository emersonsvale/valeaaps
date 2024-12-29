import '/components/comp_projetos_widget.dart';
import '/components/menu_web_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'projetos_widget.dart' show ProjetosWidget;
import 'package:flutter/material.dart';

class ProjetosModel extends FlutterFlowModel<ProjetosWidget> {
  ///  Local state fields for this page.

  String? nomeFerramenta = 'Selecione um card.';

  String? sobreFerramenta = ' ';

  ///  State fields for stateful widgets in this page.

  // Model for menuWeb component.
  late MenuWebModel menuWebModel;
  // Models for comp_projetos dynamic component.
  late FlutterFlowDynamicModels<CompProjetosModel> compProjetosModels;

  @override
  void initState(BuildContext context) {
    menuWebModel = createModel(context, () => MenuWebModel());
    compProjetosModels = FlutterFlowDynamicModels(() => CompProjetosModel());
  }

  @override
  void dispose() {
    menuWebModel.dispose();
    compProjetosModels.dispose();
  }
}
