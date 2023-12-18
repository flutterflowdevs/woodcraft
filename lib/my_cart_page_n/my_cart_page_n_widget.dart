import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/count_controller_widget.dart';
import '/components/empty_cart_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_cart_page_n_model.dart';
export 'my_cart_page_n_model.dart';

class MyCartPageNWidget extends StatefulWidget {
  const MyCartPageNWidget({Key? key}) : super(key: key);

  @override
  _MyCartPageNWidgetState createState() => _MyCartPageNWidgetState();
}

class _MyCartPageNWidgetState extends State<MyCartPageNWidget> {
  late MyCartPageNModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyCartPageNModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return FutureBuilder<List<CartsCollectionRow>>(
      future: CartsCollectionTable().queryRows(
        queryFn: (q) => q
            .eq(
              'auth_id',
              currentUserUid,
            )
            .order('id', ascending: true),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Color(0xFFE5E5E5),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFFE29547),
                  ),
                ),
              ),
            ),
          );
        }
        List<CartsCollectionRow> myCartPageNCartsCollectionRowList =
            snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFFE5E5E5),
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Text(
              'Cart',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'LufgaBold',
                    color: FlutterFlowTheme.of(context).secondary,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    useGoogleFonts: false,
                  ),
            ),
            actions: [],
            centerTitle: true,
          ),
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              21.0, 23.0, 21.0, 0.0),
                          child: Builder(
                            builder: (context) {
                              final addProduct =
                                  myCartPageNCartsCollectionRowList
                                      .map((e) => e)
                                      .toList();
                              if (addProduct.isEmpty) {
                                return EmptyCartWidget();
                              }
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: addProduct.length,
                                itemBuilder: (context, addProductIndex) {
                                  final addProductItem =
                                      addProduct[addProductIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 9.0),
                                    child: FutureBuilder<List<FurnituresRow>>(
                                      future: FurnituresTable().querySingleRow(
                                        queryFn: (q) => q.eq(
                                          'id',
                                          addProductItem.furnitureId,
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  Color(0xFFE29547),
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<FurnituresRow>
                                            containerFurnituresRowList =
                                            snapshot.data!;
                                        final containerFurnituresRow =
                                            containerFurnituresRowList
                                                    .isNotEmpty
                                                ? containerFurnituresRowList
                                                    .first
                                                : null;
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'FurnituresDetailsPage_n',
                                              queryParameters: {
                                                'furnitureInfo': serializeParam(
                                                  containerFurnituresRow,
                                                  ParamType.SupabaseRow,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height: 122.0,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(7.0),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child:
                                                            CachedNetworkImage(
                                                          fadeInDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      500),
                                                          fadeOutDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      500),
                                                          imageUrl:
                                                              containerFurnituresRow!
                                                                  .defaultImage!,
                                                          width: 116.0,
                                                          height: 90.0,
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Expanded(
                                                                  child: Text(
                                                                    containerFurnituresRow!
                                                                        .furnitureName!,
                                                                    maxLines: 1,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Raleway',
                                                                          fontSize:
                                                                              14.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Text(
                                                            'EST: 15 WORKING DAYS',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Raleway',
                                                                  color: Color(
                                                                      0xFFD6D6D6),
                                                                  fontSize: 8.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      20.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              FFAppState()
                                                                  .update(
                                                                      () {});
                                                            },
                                                            child: Text(
                                                              addProductItem
                                                                  .amt!
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Raleway',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontSize:
                                                                        14.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, -1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    40.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState()
                                                                  .totalAmount = FFAppState()
                                                                      .totalAmount -
                                                                  (containerFurnituresRow!
                                                                          .furniturePrice! *
                                                                      addProductItem
                                                                          .count!);
                                                            });
                                                            _model.deletedRow =
                                                                await CartsCollectionTable()
                                                                    .delete(
                                                              matchingRows:
                                                                  (rows) =>
                                                                      rows.eq(
                                                                'id',
                                                                addProductItem
                                                                    .id,
                                                              ),
                                                              returnRows: true,
                                                            );

                                                            setState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons.close,
                                                            color: Color(
                                                                0xFFD6D6D6),
                                                            size: 27.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                5.0, 0.0),
                                                    child:
                                                        CountControllerWidget(
                                                      key: Key(
                                                          'Key0sl_${addProductIndex}_of_${addProduct.length}'),
                                                      count:
                                                          addProductItem.count,
                                                      addItemBtn: () async {
                                                        _model.totalPrice =
                                                            await actions
                                                                .increaseAmount(
                                                          addProductItem
                                                                  .count! +
                                                              1,
                                                          containerFurnituresRow!
                                                              .furniturePrice!,
                                                        );
                                                        _model.actionResult =
                                                            await CartsCollectionTable()
                                                                .update(
                                                          data: {
                                                            'amt': _model
                                                                .totalPrice,
                                                            'count':
                                                                addProductItem
                                                                        .count! +
                                                                    1,
                                                          },
                                                          matchingRows:
                                                              (rows) => rows.eq(
                                                            'furniture_id',
                                                            containerFurnituresRow
                                                                ?.id,
                                                          ),
                                                          returnRows: true,
                                                        );
                                                        setState(() {
                                                          FFAppState()
                                                                  .totalAmount =
                                                              functions.getTotalCartAmount(
                                                                  myCartPageNCartsCollectionRowList
                                                                      .toList(),
                                                                  _model
                                                                      .actionResult!
                                                                      .toList(),
                                                                  addProductItem
                                                                      .id);
                                                        });

                                                        setState(() {});
                                                      },
                                                      removeItemBtn: () async {
                                                        _model.ress =
                                                            await actions
                                                                .removeAmount(
                                                          addProductItem
                                                                  .count! -
                                                              1,
                                                          containerFurnituresRow!
                                                              .furniturePrice!,
                                                        );
                                                        if (_model.ress! > 0) {
                                                          _model.actionPrice =
                                                              await CartsCollectionTable()
                                                                  .update(
                                                            data: {
                                                              'amt':
                                                                  _model.ress,
                                                              'count':
                                                                  addProductItem
                                                                          .count! -
                                                                      1,
                                                            },
                                                            matchingRows:
                                                                (rows) =>
                                                                    rows.eq(
                                                              'furniture_id',
                                                              containerFurnituresRow
                                                                  ?.id,
                                                            ),
                                                            returnRows: true,
                                                          );
                                                          setState(() {
                                                            FFAppState()
                                                                    .totalAmount =
                                                                functions.getTotalCartAmount(
                                                                    myCartPageNCartsCollectionRowList
                                                                        .toList(),
                                                                    _model
                                                                        .actionPrice!
                                                                        .toList(),
                                                                    addProductItem
                                                                        .id);
                                                          });
                                                        } else {
                                                          setState(() {
                                                            FFAppState()
                                                                .totalAmount = FFAppState()
                                                                    .totalAmount -
                                                                containerFurnituresRow!
                                                                    .furniturePrice!;
                                                          });
                                                          _model.deletedRowOnAction =
                                                              await CartsCollectionTable()
                                                                  .delete(
                                                            matchingRows:
                                                                (rows) =>
                                                                    rows.eq(
                                                              'id',
                                                              addProductItem.id,
                                                            ),
                                                            returnRows: true,
                                                          );
                                                        }

                                                        setState(() {});
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              21.0, 42.0, 21.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    7.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            'Total:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF797979),
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            '\$${FFAppState().totalAmount.toString()}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'LufgaBold',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        'DELIVERY EXCLUSIVE',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Raleway',
                                              color: Color(0xFF797979),
                                              fontSize: 9.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('CheckoutPage_n');
                                  },
                                  text: 'Checkout',
                                  options: FFButtonOptions(
                                    width: 160.0,
                                    height: 52.0,
                                    padding: EdgeInsets.all(0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Raleway',
                                          color: Colors.white,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
