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

  @override
  void initState(BuildContext context) {
    menuWebModel = createModel(context, () => MenuWebModel());
  }

  @override
  void dispose() {
    menuWebModel.dispose();
  }
}
