import '/flutter_flow/flutter_flow_util.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  // State field(s) for txtContrasena widget.
  FocusNode? txtContrasenaFocusNode;
  TextEditingController? txtContrasenaTextController;
  late bool txtContrasenaVisibility;
  String? Function(BuildContext, String?)? txtContrasenaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtContrasenaVisibility = false;
  }

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtContrasenaFocusNode?.dispose();
    txtContrasenaTextController?.dispose();
  }
}
