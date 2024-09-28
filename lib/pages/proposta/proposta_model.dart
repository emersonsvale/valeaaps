import '/components/menu_web_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'proposta_widget.dart' show PropostaWidget;
import 'package:flutter/material.dart';

class PropostaModel extends FlutterFlowModel<PropostaWidget> {
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
