import '/flutter_flow/flutter_flow_util.dart';
import 'cambiar_contrasena_widget.dart' show CambiarContrasenaWidget;
import 'package:flutter/material.dart';

class CambiarContrasenaModel extends FlutterFlowModel<CambiarContrasenaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtContrasenaActual widget.
  FocusNode? txtContrasenaActualFocusNode;
  TextEditingController? txtContrasenaActualTextController;
  late bool txtContrasenaActualVisibility;
  String? Function(BuildContext, String?)?
      txtContrasenaActualTextControllerValidator;
  // State field(s) for txtContrasenaNueva widget.
  FocusNode? txtContrasenaNuevaFocusNode;
  TextEditingController? txtContrasenaNuevaTextController;
  late bool txtContrasenaNuevaVisibility;
  String? Function(BuildContext, String?)?
      txtContrasenaNuevaTextControllerValidator;
  // Stores action output result for [Custom Action - cambiarContrasena] action in Button widget.
  bool? isChange;

  @override
  void initState(BuildContext context) {
    txtContrasenaActualVisibility = false;
    txtContrasenaNuevaVisibility = false;
  }

  @override
  void dispose() {
    txtContrasenaActualFocusNode?.dispose();
    txtContrasenaActualTextController?.dispose();

    txtContrasenaNuevaFocusNode?.dispose();
    txtContrasenaNuevaTextController?.dispose();
  }
}
