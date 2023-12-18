import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'favlist_empty_model.dart';
export 'favlist_empty_model.dart';

class FavlistEmptyWidget extends StatefulWidget {
  const FavlistEmptyWidget({Key? key}) : super(key: key);

  @override
  _FavlistEmptyWidgetState createState() => _FavlistEmptyWidgetState();
}

class _FavlistEmptyWidgetState extends State<FavlistEmptyWidget> {
  late FavlistEmptyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavlistEmptyModel());
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
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Text(
        'No Favorites Added!',
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'LufgaBold',
              color: FlutterFlowTheme.of(context).secondary,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              useGoogleFonts: false,
            ),
      ),
    );
  }
}
