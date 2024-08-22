import '/flutter_flow/flutter_flow_util.dart';
import 'bs_eliminar_categoria_widget.dart' show BsEliminarCategoriaWidget;
import 'package:flutter/material.dart';

class BsEliminarCategoriaModel
    extends FlutterFlowModel<BsEliminarCategoriaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for tfDelete widget.
  FocusNode? tfDeleteFocusNode;
  TextEditingController? tfDeleteTextController;
  String? Function(BuildContext, String?)? tfDeleteTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfDeleteFocusNode?.dispose();
    tfDeleteTextController?.dispose();
  }
}
