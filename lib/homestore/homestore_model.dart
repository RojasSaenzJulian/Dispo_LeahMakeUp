import '/flutter_flow/flutter_flow_util.dart';
import 'homestore_widget.dart' show HomestoreWidget;
import 'package:flutter/material.dart';

class HomestoreModel extends FlutterFlowModel<HomestoreWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
