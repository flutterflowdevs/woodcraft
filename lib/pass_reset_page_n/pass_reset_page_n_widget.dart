import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pass_reset_page_n_model.dart';
export 'pass_reset_page_n_model.dart';

class PassResetPageNWidget extends StatefulWidget {
  const PassResetPageNWidget({Key? key}) : super(key: key);

  @override
  _PassResetPageNWidgetState createState() => _PassResetPageNWidgetState();
}

class _PassResetPageNWidgetState extends State<PassResetPageNWidget> {
  late PassResetPageNModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PassResetPageNModel());
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
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset(
                'assets/images/signInBackImage.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 44.0, 0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: SvgPicture.asset(
                        'assets/images/app_image.svg',
                        width: 82.0,
                        height: 41.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 37.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: SvgPicture.asset(
                      'assets/images/forgetPassIcon.svg',
                      width: 209.0,
                      height: 209.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Please check your email to \nreset password',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'LufgaSemiBold',
                            color: FlutterFlowTheme.of(context).secondary,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 36.0, 25.0, 0.0),
                  child: wrapWithModel(
                    model: _model.buttonModel,
                    updateCallback: () => setState(() {}),
                    child: ButtonWidget(
                      btnName: 'Back To Login',
                      btnAction: () async {
                        context.pushNamed('SignInPage_n');
                      },
                    ),
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
