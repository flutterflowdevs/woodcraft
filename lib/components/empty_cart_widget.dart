import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empty_cart_model.dart';
export 'empty_cart_model.dart';

class EmptyCartWidget extends StatefulWidget {
  const EmptyCartWidget({Key? key}) : super(key: key);

  @override
  _EmptyCartWidgetState createState() => _EmptyCartWidgetState();
}

class _EmptyCartWidgetState extends State<EmptyCartWidget> {
  late EmptyCartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyCartModel());
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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Cart is empty.....',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'LufgaSemiBold',
                  color: FlutterFlowTheme.of(context).secondary,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts: false,
                ),
          ),
        ],
      ),
    );
  }
}
