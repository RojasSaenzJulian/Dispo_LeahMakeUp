import '/flutter_flow/flutter_flow_util.dart';
import 'editar_usuario_widget.dart' show EditarUsuarioWidget;
import 'package:flutter/material.dart';

class EditarUsuarioModel extends FlutterFlowModel<EditarUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
