import '/flutter_flow/flutter_flow_util.dart';
import 'bs_editar_producto_widget.dart' show BsEditarProductoWidget;
import 'package:flutter/material.dart';

class BsEditarProductoModel extends FlutterFlowModel<BsEditarProductoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtEditNombre widget.
  FocusNode? txtEditNombreFocusNode;
  TextEditingController? txtEditNombreTextController;
  String? Function(BuildContext, String?)? txtEditNombreTextControllerValidator;
  // State field(s) for txtEditPrecio widget.
  FocusNode? txtEditPrecioFocusNode;
  TextEditingController? txtEditPrecioTextController;
  String? Function(BuildContext, String?)? txtEditPrecioTextControllerValidator;
  // State field(s) for txtEditCant widget.
  FocusNode? txtEditCantFocusNode;
  TextEditingController? txtEditCantTextController;
  String? Function(BuildContext, String?)? txtEditCantTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEditNombreFocusNode?.dispose();
    txtEditNombreTextController?.dispose();

    txtEditPrecioFocusNode?.dispose();
    txtEditPrecioTextController?.dispose();

    txtEditCantFocusNode?.dispose();
    txtEditCantTextController?.dispose();
  }
}
