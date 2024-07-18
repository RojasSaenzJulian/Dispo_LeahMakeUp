import '/flutter_flow/flutter_flow_util.dart';
import 'products_admin_widget.dart' show ProductsAdminWidget;
import 'package:flutter/material.dart';

class ProductsAdminModel extends FlutterFlowModel<ProductsAdminWidget> {
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
