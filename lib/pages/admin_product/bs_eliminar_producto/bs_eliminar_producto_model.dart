import '/flutter_flow/flutter_flow_util.dart';
import 'bs_eliminar_producto_widget.dart' show BsEliminarProductoWidget;
import 'package:flutter/material.dart';

class BsEliminarProductoModel
    extends FlutterFlowModel<BsEliminarProductoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtEliminar widget.
  FocusNode? txtEliminarFocusNode;
  TextEditingController? txtEliminarTextController;
  String? Function(BuildContext, String?)? txtEliminarTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEliminarFocusNode?.dispose();
    txtEliminarTextController?.dispose();
  }
}
