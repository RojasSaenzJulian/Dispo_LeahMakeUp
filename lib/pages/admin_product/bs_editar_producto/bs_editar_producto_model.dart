import '/flutter_flow/flutter_flow_util.dart';
import 'bs_editar_producto_widget.dart' show BsEditarProductoWidget;
import 'package:flutter/material.dart';

class BsEditarProductoModel extends FlutterFlowModel<BsEditarProductoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtEditNombre widget.
  FocusNode? txtEditNombreFocusNode;
  TextEditingController? txtEditNombreTextController;
  String? Function(BuildContext, String?)? txtEditNombreTextControllerValidator;
  // State field(s) for txtEdCateg widget.
  FocusNode? txtEdCategFocusNode;
  TextEditingController? txtEdCategTextController;
  String? Function(BuildContext, String?)? txtEdCategTextControllerValidator;
  // State field(s) for txtEditPrecio widget.
  FocusNode? txtEditPrecioFocusNode;
  TextEditingController? txtEditPrecioTextController;
  String? Function(BuildContext, String?)? txtEditPrecioTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEditNombreFocusNode?.dispose();
    txtEditNombreTextController?.dispose();

    txtEdCategFocusNode?.dispose();
    txtEdCategTextController?.dispose();

    txtEditPrecioFocusNode?.dispose();
    txtEditPrecioTextController?.dispose();
  }
}
