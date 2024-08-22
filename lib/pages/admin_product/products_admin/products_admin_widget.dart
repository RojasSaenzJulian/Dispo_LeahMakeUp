import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/admin_product/bs_eliminar_producto/bs_eliminar_producto_widget.dart';
import '/pages/inicio/custom_navbar/custom_navbar_widget.dart';
import 'package:flutter/material.dart';
import 'products_admin_model.dart';
export 'products_admin_model.dart';

class ProductsAdminWidget extends StatefulWidget {
  /// En este apartado se agrega un listado de productos, en este se puede
  /// editar por medio del ícono del lapíz y eliminar por medio del ícono del
  /// basurero.
  const ProductsAdminWidget({super.key});

  @override
  State<ProductsAdminWidget> createState() => _ProductsAdminWidgetState();
}

class _ProductsAdminWidgetState extends State<ProductsAdminWidget> {
  late ProductsAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductsAdminModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFFFDB5B3),
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('administrador');
            },
            child: Icon(
              Icons.chevron_left_sharp,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 35.0,
            ),
          ),
          title: Text(
            'Administrar Productos',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Stack(
          children: [
            Stack(
              children: [
                wrapWithModel(
                  model: _model.customNavbarModel,
                  updateCallback: () => setState(() {}),
                  child: const CustomNavbarWidget(),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 8.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('crearProducto');
                          },
                          text: 'Agregar Producto',
                          options: FFButtonOptions(
                            height: 30.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFFFDB5B3),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xC714181B),
                                  fontSize: 9.0,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: StreamBuilder<List<ProductosRecord>>(
                        stream: queryProductosRecord(),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<ProductosRecord> listViewProductosRecordList =
                              snapshot.data!;

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewProductosRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewProductosRecord =
                                  listViewProductosRecordList[listViewIndex];
                              return Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          listViewProductosRecord.imagen,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.2,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.1,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    listViewProductosRecord
                                                        .nombreProducto,
                                                    'sin nombre',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  2.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Precio: ₡',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    listViewProductosRecord
                                                        .precio
                                                        .toString(),
                                                    '0',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize: 25.0,
                                            icon: const Icon(
                                              Icons.edit,
                                              color: Color(0xFF2E5A7A),
                                              size: 17.0,
                                            ),
                                            onPressed: () async {
                                              context.pushNamed(
                                                'editarProducto',
                                                queryParameters: {
                                                  'idProducto': serializeParam(
                                                    listViewProductosRecord
                                                        .reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                  'nombreProducto':
                                                      serializeParam(
                                                    '',
                                                    ParamType.String,
                                                  ),
                                                  'categoria': serializeParam(
                                                    '',
                                                    ParamType.String,
                                                  ),
                                                  'precio': serializeParam(
                                                    0.0,
                                                    ParamType.double,
                                                  ),
                                                  'imagen': serializeParam(
                                                    '',
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                          ),
                                          FlutterFlowIconButton(
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize: 25.0,
                                            icon: const Icon(
                                              Icons.delete_rounded,
                                              color: Color(0xFF9A1717),
                                              size: 17.0,
                                            ),
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: SizedBox(
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.35,
                                                        child:
                                                            BsEliminarProductoWidget(
                                                          productoEliminar:
                                                              listViewProductosRecord
                                                                  .reference,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
