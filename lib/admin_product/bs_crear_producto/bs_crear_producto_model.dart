import '/flutter_flow/flutter_flow_util.dart';
import 'bs_crear_producto_widget.dart' show BsCrearProductoWidget;
import 'package:flutter/material.dart';

class BsCrearProductoModel extends FlutterFlowModel<BsCrearProductoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNombreProducto widget.
  FocusNode? txtNombreProductoFocusNode;
  TextEditingController? txtNombreProductoTextController;
  String? Function(BuildContext, String?)?
      txtNombreProductoTextControllerValidator;
  // State field(s) for txtPrecio widget.
  FocusNode? txtPrecioFocusNode;
  TextEditingController? txtPrecioTextController;
  String? Function(BuildContext, String?)? txtPrecioTextControllerValidator;
  // State field(s) for txtCantDispo widget.
  FocusNode? txtCantDispoFocusNode;
  TextEditingController? txtCantDispoTextController;
  String? Function(BuildContext, String?)? txtCantDispoTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreProductoFocusNode?.dispose();
    txtNombreProductoTextController?.dispose();

    txtPrecioFocusNode?.dispose();
    txtPrecioTextController?.dispose();

    txtCantDispoFocusNode?.dispose();
    txtCantDispoTextController?.dispose();
  }
}
