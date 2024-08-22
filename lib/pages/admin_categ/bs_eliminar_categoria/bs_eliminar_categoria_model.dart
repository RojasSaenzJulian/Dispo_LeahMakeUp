import '/flutter_flow/flutter_flow_util.dart';
import 'bs_eliminar_categoria_widget.dart' show BsEliminarCategoriaWidget;
import 'package:flutter/material.dart';

class BsEliminarCategoriaModel
    extends FlutterFlowModel<BsEliminarCategoriaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for textEliminar widget.
  FocusNode? textEliminarFocusNode;
  TextEditingController? textEliminarTextController;
  String? Function(BuildContext, String?)? textEliminarTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textEliminarFocusNode?.dispose();
    textEliminarTextController?.dispose();
  }
}
