import '/flutter_flow/flutter_flow_util.dart';
import 'datos_tarjeta_widget.dart' show DatosTarjetaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class DatosTarjetaModel extends FlutterFlowModel<DatosTarjetaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNumTarjeta widget.
  FocusNode? txtNumTarjetaFocusNode;
  TextEditingController? txtNumTarjetaTextController;
  final txtNumTarjetaMask = MaskTextInputFormatter(mask: '#### #### #### ####');
  String? Function(BuildContext, String?)? txtNumTarjetaTextControllerValidator;
  // State field(s) for txtFechaVen widget.
  FocusNode? txtFechaVenFocusNode;
  TextEditingController? txtFechaVenTextController;
  final txtFechaVenMask = MaskTextInputFormatter(mask: '##/##');
  String? Function(BuildContext, String?)? txtFechaVenTextControllerValidator;
  // State field(s) for txtCVC widget.
  FocusNode? txtCVCFocusNode;
  TextEditingController? txtCVCTextController;
  final txtCVCMask = MaskTextInputFormatter(mask: '###');
  String? Function(BuildContext, String?)? txtCVCTextControllerValidator;
  // State field(s) for txtTitular widget.
  FocusNode? txtTitularFocusNode;
  TextEditingController? txtTitularTextController;
  String? Function(BuildContext, String?)? txtTitularTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNumTarjetaFocusNode?.dispose();
    txtNumTarjetaTextController?.dispose();

    txtFechaVenFocusNode?.dispose();
    txtFechaVenTextController?.dispose();

    txtCVCFocusNode?.dispose();
    txtCVCTextController?.dispose();

    txtTitularFocusNode?.dispose();
    txtTitularTextController?.dispose();
  }
}
