import '/components/menu_web_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'projeto_widget.dart' show ProjetoWidget;
import 'package:flutter/material.dart';

class ProjetoModel extends FlutterFlowModel<ProjetoWidget> {
  ///  Local state fields for this page.

  String? imagemAtual;

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
