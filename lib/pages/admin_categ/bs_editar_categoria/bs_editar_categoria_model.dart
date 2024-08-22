import '/flutter_flow/flutter_flow_util.dart';
import 'bs_editar_categoria_widget.dart' show BsEditarCategoriaWidget;
import 'package:flutter/material.dart';

class BsEditarCategoriaModel extends FlutterFlowModel<BsEditarCategoriaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtEditarNombre widget.
  FocusNode? txtEditarNombreFocusNode;
  TextEditingController? txtEditarNombreTextController;
  String? Function(BuildContext, String?)?
      txtEditarNombreTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEditarNombreFocusNode?.dispose();
    txtEditarNombreTextController?.dispose();
  }
}
