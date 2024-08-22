import '/flutter_flow/flutter_flow_util.dart';
import 'cambiar_nombre_widget.dart' show CambiarNombreWidget;
import 'package:flutter/material.dart';

class CambiarNombreModel extends FlutterFlowModel<CambiarNombreWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for txtNombreNuevo widget.
  FocusNode? txtNombreNuevoFocusNode;
  TextEditingController? txtNombreNuevoTextController;
  String? Function(BuildContext, String?)?
      txtNombreNuevoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtNombreNuevoFocusNode?.dispose();
    txtNombreNuevoTextController?.dispose();
  }
}
