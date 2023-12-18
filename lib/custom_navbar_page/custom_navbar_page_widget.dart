import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'custom_navbar_page_model.dart';
export 'custom_navbar_page_model.dart';

class CustomNavbarPageWidget extends StatefulWidget {
  const CustomNavbarPageWidget({
    Key? key,
    int? currentIndex,
  })  : this.currentIndex = currentIndex ?? 0,
        super(key: key);

  final int currentIndex;

  @override
  _CustomNavbarPageWidgetState createState() => _CustomNavbarPageWidgetState();
}

class _CustomNavbarPageWidgetState extends State<CustomNavbarPageWidget> {
  late CustomNavbarPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomNavbarPageModel());
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

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            child: custom_widgets.CustomNavBar(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              selectedColor: FlutterFlowTheme.of(context).primary,
              unselectedColor: Color(0xFFAAAAAA),
              currentIndex: widget.currentIndex,
            ),
          ),
        ),
      ),
    );
  }
}
