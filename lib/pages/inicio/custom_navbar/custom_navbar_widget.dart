import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_navbar_model.dart';
export 'custom_navbar_model.dart';

class CustomNavbarWidget extends StatefulWidget {
  /// En este apartado se encuentran las opciones, de inicio, productos, carrito
  /// y perfil.
  const CustomNavbarWidget({super.key});

  @override
  State<CustomNavbarWidget> createState() => _CustomNavbarWidgetState();
}

class _CustomNavbarWidgetState extends State<CustomNavbarWidget> {
  late CustomNavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomNavbarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 55.0,
            decoration: const BoxDecoration(),
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 55.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFDB5B3),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 5.0),
                              child: FlutterFlowIconButton(
                                borderRadius: 20.0,
                                borderWidth: 0.0,
                                buttonSize: 50.0,
                                icon: const Icon(
                                  Icons.home,
                                  color: Color(0xFFF7F6F6),
                                  size: 35.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed('homestore');
                                },
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              icon: const FaIcon(
                                FontAwesomeIcons.storeAlt,
                                color: Colors.white,
                                size: 25.0,
                              ),
                              onPressed: () async {
                                context.pushNamed('productos');
                              },
                            ),
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              icon: const Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                                size: 28.0,
                              ),
                              onPressed: () async {
                                context.pushNamed('Cart');
                              },
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 9.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 20.0,
                                borderWidth: 1.0,
                                buttonSize: 50.0,
                                icon: const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 35.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed('Profile');
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
