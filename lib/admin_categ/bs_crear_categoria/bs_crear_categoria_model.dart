import '/flutter_flow/flutter_flow_util.dart';
import 'bs_crear_categoria_widget.dart' show BsCrearCategoriaWidget;
import 'package:flutter/material.dart';

class BsCrearCategoriaModel extends FlutterFlowModel<BsCrearCategoriaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNombreCategoria widget.
  FocusNode? txtNombreCategoriaFocusNode;
  TextEditingController? txtNombreCategoriaTextController;
  String? Function(BuildContext, String?)?
      txtNombreCategoriaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreCategoriaFocusNode?.dispose();
    txtNombreCategoriaTextController?.dispose();
  }
}
