import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/user_profile_change_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_section_page_n_model.dart';
export 'profile_section_page_n_model.dart';

class ProfileSectionPageNWidget extends StatefulWidget {
  const ProfileSectionPageNWidget({Key? key}) : super(key: key);

  @override
  _ProfileSectionPageNWidgetState createState() =>
      _ProfileSectionPageNWidgetState();
}

class _ProfileSectionPageNWidgetState extends State<ProfileSectionPageNWidget> {
  late ProfileSectionPageNModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileSectionPageNModel());
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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Profile',
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
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 30.0, 24.0, 0.0),
                      child: FutureBuilder<List<UsersRow>>(
                        future: UsersTable().querySingleRow(
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
                          List<UsersRow> rowUsersRowList = snapshot.data!;
                          final rowUsersRow = rowUsersRowList.isNotEmpty
                              ? rowUsersRowList.first
                              : null;
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: UserProfileChangeWidget(),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Container(
                                  width: 75.0,
                                  height: 75.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    FFAppState().profilePic == null ||
                                            FFAppState().profilePic == ''
                                        ? 'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_640.png'
                                        : rowUsersRow!.displayImage!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    26.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      rowUsersRow!.displayName!,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'LufgaSemiBold',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 7.0, 0.0, 0.0),
                                      child: Text(
                                        rowUsersRow!.email!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'LufgaRegular',
                                              color: Color(0xFF7F7F7F),
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          32.82, 58.0, 30.06, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('MyOrderPage_n');
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.shopping_bag_outlined,
                              color: Color(0xFF181725),
                              size: 20.0,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Orders',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'LufgaBold',
                                        color: Color(0xFF181725),
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF212121),
                              size: 16.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(1.0, 15.0, 1.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Divider(
                            thickness: 0.8,
                            color: Color(0xFFE2E2E2),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          32.82, 28.18, 30.06, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('UsersDetailsPage_n');
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              FFIcons.kmyDetails,
                              color: Color(0xFF181725),
                              size: 14.0,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    28.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'My Details',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'LufgaBold',
                                        color: Color(0xFF181725),
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF212121),
                              size: 16.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(1.0, 15.0, 1.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Divider(
                            thickness: 0.8,
                            color: Color(0xFFE2E2E2),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          32.82, 28.18, 30.06, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('DeliveryAddressPage_n');
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: Color(0xFF181725),
                              size: 21.0,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    21.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Delivery Address',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'LufgaBold',
                                        color: Color(0xFF181725),
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF212121),
                              size: 16.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(1.0, 15.0, 1.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Divider(
                            thickness: 0.8,
                            color: Color(0xFFE2E2E2),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          32.82, 28.18, 30.06, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            FFIcons.kbell,
                            color: Color(0xFF181725),
                            size: 18.0,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Notifications',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'LufgaBold',
                                      color: Color(0xFF181725),
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF212121),
                            size: 16.0,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(1.0, 15.0, 1.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Divider(
                            thickness: 0.8,
                            color: Color(0xFFE2E2E2),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          32.82, 28.18, 30.06, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            FFIcons.kbell,
                            color: Color(0xFF181725),
                            size: 18.0,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Contact us',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'LufgaBold',
                                      color: Color(0xFF181725),
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF212121),
                            size: 16.0,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(1.0, 15.0, 1.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Divider(
                            thickness: 0.8,
                            color: Color(0xFFE2E2E2),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          35.0, 62.0, 35.0, 46.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signOut();
                          GoRouter.of(context).clearRedirectLocation();

                          context.goNamedAuth('OnBoardPage_n', context.mounted);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 57.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF2F3F2),
                            borderRadius: BorderRadius.circular(19.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    17.0, 0.0, 0.0, 0.0),
                                child: Icon(
                                  Icons.logout_outlined,
                                  color: Color(0xFF53B175),
                                  size: 26.0,
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 30.0, 0.0),
                                      child: Text(
                                        'Log Out',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'LufgaExtraBold',
                                              color: Color(0xFF53B175),
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w900,
                                              useGoogleFonts: false,
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
