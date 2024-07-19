import '/flutter_flow/flutter_flow_util.dart';
import 'delivery_widget.dart' show DeliveryWidget;
import 'package:flutter/material.dart';

class DeliveryModel extends FlutterFlowModel<DeliveryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtProvincia widget.
  FocusNode? txtProvinciaFocusNode;
  TextEditingController? txtProvinciaTextController;
  String? Function(BuildContext, String?)? txtProvinciaTextControllerValidator;
  // State field(s) for txtCanton widget.
  FocusNode? txtCantonFocusNode;
  TextEditingController? txtCantonTextController;
  String? Function(BuildContext, String?)? txtCantonTextControllerValidator;
  // State field(s) for txtDistrito widget.
  FocusNode? txtDistritoFocusNode;
  TextEditingController? txtDistritoTextController;
  String? Function(BuildContext, String?)? txtDistritoTextControllerValidator;
  // State field(s) for txtCodPostal widget.
  FocusNode? txtCodPostalFocusNode;
  TextEditingController? txtCodPostalTextController;
  String? Function(BuildContext, String?)? txtCodPostalTextControllerValidator;
  // State field(s) for txtDetalle widget.
  FocusNode? txtDetalleFocusNode;
  TextEditingController? txtDetalleTextController;
  String? Function(BuildContext, String?)? txtDetalleTextControllerValidator;
  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoTextController;
  String? Function(BuildContext, String?)? txtTelefonoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtProvinciaFocusNode?.dispose();
    txtProvinciaTextController?.dispose();

    txtCantonFocusNode?.dispose();
    txtCantonTextController?.dispose();

    txtDistritoFocusNode?.dispose();
    txtDistritoTextController?.dispose();

    txtCodPostalFocusNode?.dispose();
    txtCodPostalTextController?.dispose();

    txtDetalleFocusNode?.dispose();
    txtDetalleTextController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoTextController?.dispose();
  }
}
