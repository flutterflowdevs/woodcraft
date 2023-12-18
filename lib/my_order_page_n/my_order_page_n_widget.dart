import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/ordered_items_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_order_page_n_model.dart';
export 'my_order_page_n_model.dart';

class MyOrderPageNWidget extends StatefulWidget {
  const MyOrderPageNWidget({Key? key}) : super(key: key);

  @override
  _MyOrderPageNWidgetState createState() => _MyOrderPageNWidgetState();
}

class _MyOrderPageNWidgetState extends State<MyOrderPageNWidget> {
  late MyOrderPageNModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyOrderPageNModel());
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
        List<UsersRow> myOrderPageNUsersRowList = snapshot.data!;
        final myOrderPageNUsersRow = myOrderPageNUsersRowList.isNotEmpty
            ? myOrderPageNUsersRowList.first
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
                  context.safePop();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
              title: Text(
                'My Order',
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(21.0, 23.0, 21.0, 0.0),
                      child: FutureBuilder<List<CheckoutRow>>(
                        future: CheckoutTable().queryRows(
                          queryFn: (q) => q.eq(
                            'user_id',
                            myOrderPageNUsersRow?.id,
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
                          List<CheckoutRow> listViewCheckoutRowList =
                              snapshot.data!;
                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewCheckoutRowList.length,
                            separatorBuilder: (_, __) => SizedBox(height: 6.0),
                            itemBuilder: (context, listViewIndex) {
                              final listViewCheckoutRow =
                                  listViewCheckoutRowList[listViewIndex];
                              return FutureBuilder<List<FurnituresRow>>(
                                future: FurnituresTable().querySingleRow(
                                  queryFn: (q) => q.eq(
                                    'id',
                                    listViewCheckoutRow.furnitureId,
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
                                        'Keyt8c_${listViewIndex}_of_${listViewCheckoutRowList.length}'),
                                    chairName: orderedItemsListFurnituresRow!
                                        .furnitureName!,
                                    workDays: orderedItemsListFurnituresRow!
                                        .category1!,
                                    chairPrice:
                                        '\$${orderedItemsListFurnituresRow?.furniturePrice?.toString()}',
                                    chairPath:
                                        orderedItemsListFurnituresRow!.arImage!,
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
