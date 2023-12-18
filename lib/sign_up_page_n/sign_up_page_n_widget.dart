import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sign_up_page_n_model.dart';
export 'sign_up_page_n_model.dart';

class SignUpPageNWidget extends StatefulWidget {
  const SignUpPageNWidget({Key? key}) : super(key: key);

  @override
  _SignUpPageNWidgetState createState() => _SignUpPageNWidgetState();
}

class _SignUpPageNWidgetState extends State<SignUpPageNWidget> {
  late SignUpPageNModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpPageNModel());

    _model.userNameController ??= TextEditingController();
    _model.userNameFocusNode ??= FocusNode();

    _model.signUpMailController ??= TextEditingController();
    _model.signUpMailFocusNode ??= FocusNode();

    _model.signUpPassController ??= TextEditingController();
    _model.signUpPassFocusNode ??= FocusNode();

    _model.signUpConfPassController ??= TextEditingController();
    _model.signUpConfPassFocusNode ??= FocusNode();
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
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.asset(
                        'assets/images/signInBackImage.png',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 44.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/minifurse_logo.png',
                                width: 82.0,
                                height: 41.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              14.0, 67.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Create Account',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'LufgaExtraBold',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.w800,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              26.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 7.0, 0.0, 0.0),
                                child: Text(
                                  'Enter your details for a new account',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'LufgaMedium',
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 29.0, 24.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFFAFAFA),
                              borderRadius: BorderRadius.circular(6.0),
                              border: Border.all(
                                color: Color(0xFFCCD8D6),
                              ),
                            ),
                            child: TextFormField(
                              controller: _model.userNameController,
                              focusNode: _model.userNameFocusNode,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'LufgaMedium',
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                                hintText: 'Full Name',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                      fontSize: 13.0,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 6.0, 0.0, 0.0),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.userNameControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 18.0, 24.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFFAFAFA),
                              borderRadius: BorderRadius.circular(6.0),
                              border: Border.all(
                                color: Color(0xFFCCD8D6),
                              ),
                            ),
                            child: TextFormField(
                              controller: _model.signUpMailController,
                              focusNode: _model.signUpMailFocusNode,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'LufgaMedium',
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                                hintText: 'Enter Email Address',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                      fontSize: 13.0,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 6.0, 0.0, 0.0),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.signUpMailControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 18.0, 24.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFFAFAFA),
                              borderRadius: BorderRadius.circular(6.0),
                              border: Border.all(
                                color: Color(0xFFCCD8D6),
                              ),
                            ),
                            child: TextFormField(
                              controller: _model.signUpPassController,
                              focusNode: _model.signUpPassFocusNode,
                              obscureText: !_model.signUpPassVisibility,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'LufgaMedium',
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                                hintText: 'Password',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                      fontSize: 13.0,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 15.0, 0.0, 0.0),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => _model.signUpPassVisibility =
                                        !_model.signUpPassVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.signUpPassVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.signUpPassControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 18.0, 24.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFFAFAFA),
                              borderRadius: BorderRadius.circular(6.0),
                              border: Border.all(
                                color: Color(0xFFCCD8D6),
                              ),
                            ),
                            child: TextFormField(
                              controller: _model.signUpConfPassController,
                              focusNode: _model.signUpConfPassFocusNode,
                              obscureText: !_model.signUpConfPassVisibility,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'LufgaMedium',
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                                hintText: 'Confirm Password',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                      fontSize: 13.0,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 15.0, 0.0, 0.0),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => _model.signUpConfPassVisibility =
                                        !_model.signUpConfPassVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.signUpConfPassVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model
                                  .signUpConfPassControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 21.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    shape: CircleBorder(),
                                  ),
                                  unselectedWidgetColor: Color(0xFF808080),
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue ??= false,
                                  onChanged: (newValue) async {
                                    setState(
                                        () => _model.checkboxValue = newValue!);
                                  },
                                  activeColor: Color(0xFF284F49),
                                  checkColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 2.0, 0.0, 0.0),
                                child: Text(
                                  'I accept the Terms of Service and Privacy Policy',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'LufgaExtraBold',
                                        color: Colors.black,
                                        fontSize: 8.0,
                                        fontWeight: FontWeight.w800,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              25.0, 37.0, 25.0, 0.0),
                          child: wrapWithModel(
                            model: _model.buttonModel,
                            updateCallback: () => setState(() {}),
                            child: ButtonWidget(
                              btnName: 'Create Account',
                              btnAction: () async {
                                setState(() {
                                  FFAppState().totalAmount = 0.0;
                                });
                                if (_model.checkboxValue == true) {
                                  GoRouter.of(context).prepareAuthEvent();
                                  if (_model.signUpPassController.text !=
                                      _model.signUpConfPassController.text) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Passwords don\'t match!',
                                        ),
                                      ),
                                    );
                                    return;
                                  }

                                  final user =
                                      await authManager.createAccountWithEmail(
                                    context,
                                    _model.signUpMailController.text,
                                    _model.signUpPassController.text,
                                  );
                                  if (user == null) {
                                    return;
                                  }

                                  await UsersTable().insert({
                                    'email': _model.signUpMailController.text,
                                    'display_name':
                                        _model.userNameController.text,
                                    'auth_id': currentUserUid,
                                  });

                                  context.goNamedAuth(
                                      'CustomNavbarPage', context.mounted);
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Terms Not Accepted'),
                                        content: Text(
                                            'Please Accept the terms to create account'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 19.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Already have an account?',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'LufgaRegular',
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      letterSpacing: 1.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    2.0, 0.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('SignInPage_n');
                                  },
                                  child: Text(
                                    'Login Here',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'LufgaMedium',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
