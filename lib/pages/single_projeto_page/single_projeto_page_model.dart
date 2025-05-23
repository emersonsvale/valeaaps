import '/backend/supabase/supabase.dart';
import '/components/menu_web_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'single_projeto_page_widget.dart' show SingleProjetoPageWidget;
import 'package:flutter/material.dart';

class SingleProjetoPageModel extends FlutterFlowModel<SingleProjetoPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in SingleProjetoPage widget.
  List<ProjetosRow>? reton;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
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
