import '/flutter_flow/flutter_flow_util.dart';
import '/pages/inicio/custom_navbar/custom_navbar_widget.dart';
import 'categoria_admin_widget.dart' show CategoriaAdminWidget;
import 'package:flutter/material.dart';

class CategoriaAdminModel extends FlutterFlowModel<CategoriaAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CustomNavbar component.
  late CustomNavbarModel customNavbarModel;

  @override
  void initState(BuildContext context) {
    customNavbarModel = createModel(context, () => CustomNavbarModel());
  }

  @override
  void dispose() {
    customNavbarModel.dispose();
  }
}
