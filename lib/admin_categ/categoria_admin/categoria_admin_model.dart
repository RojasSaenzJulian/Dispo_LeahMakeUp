import '/flutter_flow/flutter_flow_util.dart';
import 'categoria_admin_widget.dart' show CategoriaAdminWidget;
import 'package:flutter/material.dart';

class CategoriaAdminModel extends FlutterFlowModel<CategoriaAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarFocusNode?.dispose();
    searchBarTextController?.dispose();
  }
}
