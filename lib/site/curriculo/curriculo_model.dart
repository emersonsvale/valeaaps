import '/components/menu_web_widget.dart';
import '/components/p_curriculo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'curriculo_widget.dart' show CurriculoWidget;
import 'package:flutter/material.dart';

class CurriculoModel extends FlutterFlowModel<CurriculoWidget> {
  ///  Local state fields for this page.

  String? nomeFerramenta = 'Selecione um card.';

  String? sobreFerramenta = ' ';

  ///  State fields for stateful widgets in this page.

  // Model for pCurriculo component.
  late PCurriculoModel pCurriculoModel;
  // Model for menuWeb component.
  late MenuWebModel menuWebModel;

  @override
  void initState(BuildContext context) {
    pCurriculoModel = createModel(context, () => PCurriculoModel());
    menuWebModel = createModel(context, () => MenuWebModel());
  }

  @override
  void dispose() {
    pCurriculoModel.dispose();
    menuWebModel.dispose();
  }
}
