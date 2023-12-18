import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'count_controller_model.dart';
export 'count_controller_model.dart';

class CountControllerWidget extends StatefulWidget {
  const CountControllerWidget({
    Key? key,
    this.addItemBtn,
    this.removeItemBtn,
    this.count,
  }) : super(key: key);

  final Future<dynamic> Function()? addItemBtn;
  final Future<dynamic> Function()? removeItemBtn;
  final int? count;

  @override
  _CountControllerWidgetState createState() => _CountControllerWidgetState();
}

class _CountControllerWidgetState extends State<CountControllerWidget> {
  late CountControllerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CountControllerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await widget.removeItemBtn?.call();
            },
            child: FaIcon(
              FontAwesomeIcons.minusSquare,
              color: FlutterFlowTheme.of(context).primary,
              size: 24.0,
            ),
          ),
        ),
        Text(
          valueOrDefault<String>(
            widget.count?.toString(),
            '.',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'LufgaSemiBold',
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                useGoogleFonts: false,
              ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await widget.addItemBtn?.call();
            },
            child: FaIcon(
              FontAwesomeIcons.plusSquare,
              color: FlutterFlowTheme.of(context).primary,
              size: 24.0,
            ),
          ),
        ),
      ],
    );
  }
}
