import '/flutter_flow/flutter_flow_util.dart';
import 'cambiar_numero_widget.dart' show CambiarNumeroWidget;
import 'package:flutter/material.dart';

class CambiarNumeroModel extends FlutterFlowModel<CambiarNumeroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNumero widget.
  FocusNode? txtNumeroFocusNode;
  TextEditingController? txtNumeroTextController;
  String? Function(BuildContext, String?)? txtNumeroTextControllerValidator;
  // State field(s) for txtNumeroNuevo widget.
  FocusNode? txtNumeroNuevoFocusNode;
  TextEditingController? txtNumeroNuevoTextController;
  String? Function(BuildContext, String?)?
      txtNumeroNuevoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNumeroFocusNode?.dispose();
    txtNumeroTextController?.dispose();

    txtNumeroNuevoFocusNode?.dispose();
    txtNumeroNuevoTextController?.dispose();
  }
}
