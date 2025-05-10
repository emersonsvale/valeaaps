import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'email_cliente_proposta_widget.dart' show EmailClientePropostaWidget;
import 'package:flutter/material.dart';

class EmailClientePropostaModel
    extends FlutterFlowModel<EmailClientePropostaWidget> {
  ///  Local state fields for this component.

  String? image;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<PropostaRow>? retorn;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
