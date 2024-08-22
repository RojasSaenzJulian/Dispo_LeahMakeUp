import '/flutter_flow/flutter_flow_util.dart';
import '/pages/inicio/custom_navbar/custom_navbar_widget.dart';
import 'administrador_widget.dart' show AdministradorWidget;
import 'package:flutter/material.dart';

class AdministradorModel extends FlutterFlowModel<AdministradorWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CustomNavbar component.
  late CustomNavbarModel customNavbarModel1;
  // Model for CustomNavbar component.
  late CustomNavbarModel customNavbarModel2;

  @override
  void initState(BuildContext context) {
    customNavbarModel1 = createModel(context, () => CustomNavbarModel());
    customNavbarModel2 = createModel(context, () => CustomNavbarModel());
  }

  @override
  void dispose() {
    customNavbarModel1.dispose();
    customNavbarModel2.dispose();
  }
}
