import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/button_widget.dart';
import '/components/card_details_widget.dart';
import '/components/ordered_items_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'payment_page_n_model.dart';
export 'payment_page_n_model.dart';

class PaymentPageNWidget extends StatefulWidget {
  const PaymentPageNWidget({
    Key? key,
    this.tempAddress,
  }) : super(key: key);

  final UsersAddressRow? tempAddress;

  @override
  _PaymentPageNWidgetState createState() => _PaymentPageNWidgetState();
}

class _PaymentPageNWidgetState extends State<PaymentPageNWidget> {
  late PaymentPageNModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentPageNModel());
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

    return FutureBuilder<List<UsersRow>>(
      future: UsersTable().querySingleRow(
        queryFn: (q) => q.eq(
          'auth_id',
          currentUserUid,
        ),
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
        List<UsersRow> paymentPageNUsersRowList = snapshot.data!;
        final paymentPageNUsersRow = paymentPageNUsersRowList.isNotEmpty
            ? paymentPageNUsersRowList.first
            : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFFE5E5E5),
            appBar: AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              leading: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pop();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
              title: Text(
                'Payment',
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
              child: FutureBuilder<List<CartsCollectionRow>>(
                future: CartsCollectionTable().queryRows(
                  queryFn: (q) => q.eq(
                    'user_id',
                    paymentPageNUsersRow?.id,
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
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Color(0xFFE29547),
                          ),
                        ),
                      ),
                    );
                  }
                  List<CartsCollectionRow> containerCartsCollectionRowList =
                      snapshot.data!;
                  return Container(
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      21.0, 23.0, 21.0, 0.0),
                                  child:
                                      FutureBuilder<List<CartsCollectionRow>>(
                                    future: CartsCollectionTable().queryRows(
                                      queryFn: (q) => q.eq(
                                        'auth_id',
                                        currentUserUid,
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
                                                  AlwaysStoppedAnimation<Color>(
                                                Color(0xFFE29547),
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<CartsCollectionRow>
                                          listViewCartsCollectionRowList =
                                          snapshot.data!;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewCartsCollectionRowList
                                                .length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewCartsCollectionRow =
                                              listViewCartsCollectionRowList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 6.0, 0.0, 6.0),
                                            child: FutureBuilder<
                                                List<FurnituresRow>>(
                                              future: FurnituresTable()
                                                  .querySingleRow(
                                                queryFn: (q) => q.eq(
                                                  'id',
                                                  listViewCartsCollectionRow
                                                      .furnitureId,
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
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
                                                    orderedItemsListFurnituresRowList =
                                                    snapshot.data!;
                                                final orderedItemsListFurnituresRow =
                                                    orderedItemsListFurnituresRowList
                                                            .isNotEmpty
                                                        ? orderedItemsListFurnituresRowList
                                                            .first
                                                        : null;
                                                return OrderedItemsListWidget(
                                                  key: Key(
                                                      'Keyvsc_${listViewIndex}_of_${listViewCartsCollectionRowList.length}'),
                                                  chairName:
                                                      orderedItemsListFurnituresRow!
                                                          .furnitureName!,
                                                  workDays:
                                                      orderedItemsListFurnituresRow!
                                                          .furnitureSize!,
                                                  chairPrice:
                                                      '\$${orderedItemsListFurnituresRow?.furniturePrice?.toString()}',
                                                  chairPath:
                                                      orderedItemsListFurnituresRow!
                                                          .defaultImage!,
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
                                      0.0, 23.0, 0.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.cardDetailsModel,
                                    updateCallback: () => setState(() {}),
                                    child: CardDetailsWidget(),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      38.0, 53.0, 38.0, 88.0),
                                  child: wrapWithModel(
                                    model: _model.buttonModel,
                                    updateCallback: () => setState(() {}),
                                    child: ButtonWidget(
                                      btnName: 'Pay Now',
                                      btnAction: () async {
                                        while (_model.index <
                                            containerCartsCollectionRowList
                                                .length) {
                                          await CheckoutTable().insert({
                                            'created_at':
                                                supaSerialize<DateTime>(
                                                    getCurrentTimestamp),
                                            'user_id': paymentPageNUsersRow?.id,
                                            'furniture_id':
                                                containerCartsCollectionRowList[
                                                        _model.index]
                                                    .furnitureId,
                                            'total_amount':
                                                containerCartsCollectionRowList[
                                                        _model.index]
                                                    .amt,
                                            'user_address_id':
                                                widget.tempAddress != null
                                                    ? widget.tempAddress?.id
                                                    : paymentPageNUsersRow
                                                        ?.usersAddressId,
                                          });
                                          setState(() {
                                            _model.index = _model.index + 1;
                                          });
                                        }
                                        await CartsCollectionTable().delete(
                                          matchingRows: (rows) => rows.eq(
                                            'user_id',
                                            paymentPageNUsersRow?.id,
                                          ),
                                        );
                                        setState(() {
                                          FFAppState().totalCount = 0;
                                          FFAppState().totalAmount = 0.0;
                                          FFAppState().shippingCharges = 1000;
                                        });

                                        context.pushNamed('OrderPlacedPage_n');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
