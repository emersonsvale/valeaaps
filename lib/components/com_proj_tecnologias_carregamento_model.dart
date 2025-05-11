import '/flutter_flow/flutter_flow_util.dart';
import 'com_proj_tecnologias_carregamento_widget.dart'
    show ComProjTecnologiasCarregamentoWidget;
import 'package:flutter/material.dart';

class ComProjTecnologiasCarregamentoModel
    extends FlutterFlowModel<ComProjTecnologiasCarregamentoWidget> {
  ///  Local state fields for this component.

  List<int> list = [1, 2, 3, 4, 5, 6];
  void addToList(int item) => list.add(item);
  void removeFromList(int item) => list.remove(item);
  void removeAtIndexFromList(int index) => list.removeAt(index);
  void insertAtIndexInList(int index, int item) => list.insert(index, item);
  void updateListAtIndex(int index, Function(int) updateFn) =>
      list[index] = updateFn(list[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
