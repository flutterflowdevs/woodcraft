import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'no_address_found_model.dart';
export 'no_address_found_model.dart';

class NoAddressFoundWidget extends StatefulWidget {
  const NoAddressFoundWidget({Key? key}) : super(key: key);

  @override
  _NoAddressFoundWidgetState createState() => _NoAddressFoundWidgetState();
}

class _NoAddressFoundWidgetState extends State<NoAddressFoundWidget> {
  late NoAddressFoundModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoAddressFoundModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Text(
        'No Address Added',
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'LufgaBold',
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              useGoogleFonts: false,
            ),
      ),
    );
  }
}
