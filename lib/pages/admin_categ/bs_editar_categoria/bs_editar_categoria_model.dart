import '/flutter_flow/flutter_flow_util.dart';
import 'bs_editar_categoria_widget.dart' show BsEditarCategoriaWidget;
import 'package:flutter/material.dart';

class BsEditarCategoriaModel extends FlutterFlowModel<BsEditarCategoriaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtEditNombre widget.
  FocusNode? txtEditNombreFocusNode;
  TextEditingController? txtEditNombreTextController;
  String? Function(BuildContext, String?)? txtEditNombreTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEditNombreFocusNode?.dispose();
    txtEditNombreTextController?.dispose();
  }
}
