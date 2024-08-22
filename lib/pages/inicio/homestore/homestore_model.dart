import '/flutter_flow/flutter_flow_util.dart';
import '/pages/inicio/custom_navbar/custom_navbar_widget.dart';
import 'homestore_widget.dart' show HomestoreWidget;
import 'package:flutter/material.dart';

class HomestoreModel extends FlutterFlowModel<HomestoreWidget> {
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
