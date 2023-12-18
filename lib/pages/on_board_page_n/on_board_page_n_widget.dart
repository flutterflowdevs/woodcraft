import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'on_board_page_n_model.dart';
export 'on_board_page_n_model.dart';

class OnBoardPageNWidget extends StatefulWidget {
  const OnBoardPageNWidget({Key? key}) : super(key: key);

  @override
  _OnBoardPageNWidgetState createState() => _OnBoardPageNWidgetState();
}

class _OnBoardPageNWidgetState extends State<OnBoardPageNWidget> {
  late OnBoardPageNModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnBoardPageNModel());
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Opacity(
              opacity: 0.1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Image.asset(
                  'assets/images/onboardBackImage.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 96.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      'assets/images/chair_with_360_deg.png',
                      width: double.infinity,
                      height: 240.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(46.0, 26.0, 46.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Optimize your space using tech and creativity in africa',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'LufgaBold',
                                color: FlutterFlowTheme.of(context).alternate,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: false,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(32.0, 6.0, 32.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Fitting your furnitures in your space before buying',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'LufgaMedium',
                                color: FlutterFlowTheme.of(context).alternate,
                                fontSize: 13.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: false,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 48.0, 25.0, 0.0),
                  child: wrapWithModel(
                    model: _model.buttonModel,
                    updateCallback: () => setState(() {}),
                    child: ButtonWidget(
                      btnName: 'Existing User (Login)',
                      btnClr: FlutterFlowTheme.of(context).secondary,
                      btnAction: () async {
                        context.pushNamed('SignInPage_n');
                      },
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(78.0, 10.0, 77.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: RichText(
                          textScaleFactor:
                              MediaQuery.of(context).textScaleFactor,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'By tapping Create Account and using Furniverse, You agree to our',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'LufgaRegular',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              TextSpan(
                                text: ' Terms & Privacy Policy',
                                style: GoogleFonts.getFont(
                                  'Open Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 9.0,
                                ),
                                mouseCursor: SystemMouseCursors.click,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    context.pushNamed('PrivacyPolicyPage_n');
                                  },
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'LufgaRegular',
                                  fontSize: 9.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                          textAlign: TextAlign.center,
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
    );
  }
}
