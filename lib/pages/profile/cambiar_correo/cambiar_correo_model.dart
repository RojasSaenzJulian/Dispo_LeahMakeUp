import '/flutter_flow/flutter_flow_util.dart';
import 'cambiar_correo_widget.dart' show CambiarCorreoWidget;
import 'package:flutter/material.dart';

class CambiarCorreoModel extends FlutterFlowModel<CambiarCorreoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  // State field(s) for txtCorreoNuevo widget.
  FocusNode? txtCorreoNuevoFocusNode;
  TextEditingController? txtCorreoNuevoTextController;
  String? Function(BuildContext, String?)?
      txtCorreoNuevoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtCorreoNuevoFocusNode?.dispose();
    txtCorreoNuevoTextController?.dispose();
  }
}
