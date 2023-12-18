import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'description_button_model.dart';
export 'description_button_model.dart';

class DescriptionButtonWidget extends StatefulWidget {
  const DescriptionButtonWidget({
    Key? key,
    required this.btn1Text,
    required this.cont,
    required this.btn1Action,
    required this.btn2Text,
    required this.btn2Action,
  }) : super(key: key);

  final String? btn1Text;
  final String? cont;
  final Future<dynamic> Function()? btn1Action;
  final String? btn2Text;
  final Future<dynamic> Function()? btn2Action;

  @override
  _DescriptionButtonWidgetState createState() =>
      _DescriptionButtonWidgetState();
}

class _DescriptionButtonWidgetState extends State<DescriptionButtonWidget> {
  late DescriptionButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DescriptionButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(21.0, 0.0, 20.0, 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              FFButtonWidget(
                onPressed: () async {
                  await widget.btn1Action?.call();
                },
                text: widget.btn1Text!,
                options: FFButtonOptions(
                  width: 83.0,
                  height: 40.0,
                  padding: EdgeInsets.all(0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.white,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'LufgaSemiBold',
                        color: Colors.black,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: false,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  await widget.btn2Action?.call();
                },
                text: widget.btn2Text!,
                options: FFButtonOptions(
                  width: 83.0,
                  height: 40.0,
                  padding: EdgeInsets.all(0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.white,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'LufgaSemiBold',
                        color: Colors.black,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: false,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
            child: Container(
              width: 235.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondary,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 30.0,
                    height: 30.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      'assets/images/phone.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 2.0, 0.0, 0.0),
                    child: Text(
                      widget.cont!,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
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
  }
}
