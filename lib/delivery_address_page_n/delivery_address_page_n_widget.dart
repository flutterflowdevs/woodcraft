import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/no_address_found_widget.dart';
import '/components/user_delivery_address_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'delivery_address_page_n_model.dart';
export 'delivery_address_page_n_model.dart';

class DeliveryAddressPageNWidget extends StatefulWidget {
  const DeliveryAddressPageNWidget({Key? key}) : super(key: key);

  @override
  _DeliveryAddressPageNWidgetState createState() =>
      _DeliveryAddressPageNWidgetState();
}

class _DeliveryAddressPageNWidgetState
    extends State<DeliveryAddressPageNWidget> {
  late DeliveryAddressPageNModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeliveryAddressPageNModel());
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
              context.pushNamed(
                'CustomNavbarPage',
                queryParameters: {
                  'currentIndex': serializeParam(
                    3,
                    ParamType.int,
                  ),
                }.withoutNulls,
              );
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20.0,
            ),
          ),
          title: Text(
            'Delivery Address',
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
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            22.0, 22.0, 22.0, 0.0),
                        child: FutureBuilder<List<UsersAddressRow>>(
                          future: UsersAddressTable().queryRows(
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
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xFFE29547),
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<UsersAddressRow> listViewUsersAddressRowList =
                                snapshot.data!;
                            if (listViewUsersAddressRowList.isEmpty) {
                              return NoAddressFoundWidget();
                            }
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewUsersAddressRowList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewUsersAddressRow =
                                    listViewUsersAddressRowList[listViewIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'ChangeGivenAddressPage_n',
                                        queryParameters: {
                                          'uniqueID': serializeParam(
                                            listViewUsersAddressRow,
                                            ParamType.SupabaseRow,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: UserDeliveryAddressWidget(
                                      key: Key(
                                          'Key4cn_${listViewIndex}_of_${listViewUsersAddressRowList.length}'),
                                      userName: listViewUsersAddressRow
                                          .nameOnAddress!,
                                      userAddress:
                                          listViewUsersAddressRow.fullAddress!,
                                      userPhNum:
                                          listViewUsersAddressRow.phoneNumber!,
                                      userState: listViewUsersAddressRow.state!,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            33.0, 40.0, 33.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('AddNewAddressPage_n');
                          },
                          child: Container(
                            width: double.infinity,
                            height: 57.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF2F3F2),
                              borderRadius: BorderRadius.circular(19.0),
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Add new address',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'LufgaRegular',
                                    color: Color(0xFF53B175),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
