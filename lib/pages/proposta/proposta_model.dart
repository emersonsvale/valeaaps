import '/backend/supabase/supabase.dart';
import '/components/menu_web_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'proposta_widget.dart' show PropostaWidget;
import 'package:flutter/material.dart';

class PropostaModel extends FlutterFlowModel<PropostaWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in proposta widget.
  List<PropostaRow>? retorn;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
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
