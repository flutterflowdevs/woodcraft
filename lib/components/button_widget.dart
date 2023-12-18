import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_model.dart';
export 'button_model.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    Key? key,
    required this.btnName,
    Color? btnClr,
    required this.btnAction,
  })  : this.btnClr = btnClr ?? const Color(0xFF284F49),
        super(key: key);

  final String? btnName;
  final Color btnClr;
  final Future<dynamic> Function()? btnAction;

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  late ButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FFButtonWidget(
      onPressed: () async {
        await widget.btnAction?.call();
      },
      text: widget.btnName!,
      options: FFButtonOptions(
        width: double.infinity,
        height: 50.0,
        padding: EdgeInsets.all(0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: widget.btnClr,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'LufgaSemiBold',
              color: FlutterFlowTheme.of(context).tertiary,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              useGoogleFonts: false,
            ),
        elevation: 3.0,
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(7.0),
      ),
    );
  }
}
