import '/components/com_proj_netflix_widget.dart';
import '/components/comp_index_netflix_widget.dart';
import '/components/menu_web_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cases_widget.dart' show CasesWidget;
import 'package:flutter/material.dart';

class CasesModel extends FlutterFlowModel<CasesWidget> {
  ///  Local state fields for this page.

  String? nomeFerramenta = 'Selecione um card.';

  String? sobreFerramenta = ' ';

  String imagem = 'https://picsum.photos/seed/679/600';

  ///  State fields for stateful widgets in this page.

  // Models for comProjNetflix dynamic component.
  late FlutterFlowDynamicModels<ComProjNetflixModel> comProjNetflixModels1;
  // Models for comProjNetflix dynamic component.
  late FlutterFlowDynamicModels<ComProjNetflixModel> comProjNetflixModels2;
  // Models for comProjNetflix dynamic component.
  late FlutterFlowDynamicModels<ComProjNetflixModel> comProjNetflixModels3;
  // Models for comProjNetflix dynamic component.
  late FlutterFlowDynamicModels<ComProjNetflixModel> comProjNetflixModels4;
  // Models for compIndexNetflix dynamic component.
  late FlutterFlowDynamicModels<CompIndexNetflixModel> compIndexNetflixModels;
  // Model for menuWeb component.
  late MenuWebModel menuWebModel;

  @override
  void initState(BuildContext context) {
    comProjNetflixModels1 =
        FlutterFlowDynamicModels(() => ComProjNetflixModel());
    comProjNetflixModels2 =
        FlutterFlowDynamicModels(() => ComProjNetflixModel());
    comProjNetflixModels3 =
        FlutterFlowDynamicModels(() => ComProjNetflixModel());
    comProjNetflixModels4 =
        FlutterFlowDynamicModels(() => ComProjNetflixModel());
    compIndexNetflixModels =
        FlutterFlowDynamicModels(() => CompIndexNetflixModel());
    menuWebModel = createModel(context, () => MenuWebModel());
  }

  @override
  void dispose() {
    comProjNetflixModels1.dispose();
    comProjNetflixModels2.dispose();
    comProjNetflixModels3.dispose();
    comProjNetflixModels4.dispose();
    compIndexNetflixModels.dispose();
    menuWebModel.dispose();
  }
}
