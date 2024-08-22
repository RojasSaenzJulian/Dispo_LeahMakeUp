import '/flutter_flow/flutter_flow_util.dart';
import 'crear_producto_widget.dart' show CrearProductoWidget;
import 'package:flutter/material.dart';

class CrearProductoModel extends FlutterFlowModel<CrearProductoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNombreProducto widget.
  FocusNode? txtNombreProductoFocusNode;
  TextEditingController? txtNombreProductoTextController;
  String? Function(BuildContext, String?)?
      txtNombreProductoTextControllerValidator;
  // State field(s) for txtCategoria widget.
  FocusNode? txtCategoriaFocusNode;
  TextEditingController? txtCategoriaTextController;
  String? Function(BuildContext, String?)? txtCategoriaTextControllerValidator;
  // State field(s) for txtPrecio widget.
  FocusNode? txtPrecioFocusNode;
  TextEditingController? txtPrecioTextController;
  String? Function(BuildContext, String?)? txtPrecioTextControllerValidator;
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

    txtCategoriaFocusNode?.dispose();
    txtCategoriaTextController?.dispose();

    txtPrecioFocusNode?.dispose();
    txtPrecioTextController?.dispose();
  }
}
