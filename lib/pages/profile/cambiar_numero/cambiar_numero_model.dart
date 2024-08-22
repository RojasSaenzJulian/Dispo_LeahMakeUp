import '/flutter_flow/flutter_flow_util.dart';
import 'cambiar_numero_widget.dart' show CambiarNumeroWidget;
import 'package:flutter/material.dart';

class CambiarNumeroModel extends FlutterFlowModel<CambiarNumeroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoTextController;
  String? Function(BuildContext, String?)? txtTelefonoTextControllerValidator;
  // State field(s) for txtTelefonoNuevo widget.
  FocusNode? txtTelefonoNuevoFocusNode;
  TextEditingController? txtTelefonoNuevoTextController;
  String? Function(BuildContext, String?)?
      txtTelefonoNuevoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtTelefonoFocusNode?.dispose();
    txtTelefonoTextController?.dispose();

    txtTelefonoNuevoFocusNode?.dispose();
    txtTelefonoNuevoTextController?.dispose();
  }
}
