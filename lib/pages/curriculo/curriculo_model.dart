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

  // Model for menuWeb component.
  late MenuWebModel menuWebModel;
  // Model for pCurriculo component.
  late PCurriculoModel pCurriculoModel;

  @override
  void initState(BuildContext context) {
    menuWebModel = createModel(context, () => MenuWebModel());
    pCurriculoModel = createModel(context, () => PCurriculoModel());
  }

  @override
  void dispose() {
    menuWebModel.dispose();
    pCurriculoModel.dispose();
  }
}
