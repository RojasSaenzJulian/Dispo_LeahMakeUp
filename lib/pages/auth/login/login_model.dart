import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

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
    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtContrasenaFocusNode?.dispose();
    txtContrasenaTextController?.dispose();
  }
}
