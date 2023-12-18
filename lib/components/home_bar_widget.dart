import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_bar_model.dart';
export 'home_bar_model.dart';

class HomeBarWidget extends StatefulWidget {
  const HomeBarWidget({Key? key}) : super(key: key);

  @override
  _HomeBarWidgetState createState() => _HomeBarWidgetState();
}

class _HomeBarWidgetState extends State<HomeBarWidget> {
  late HomeBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().update(() {
                  FFAppState().selectOption = 0;
                  FFAppState().selectedCategory = 'All';
                });
              },
              child: Container(
                width: 44.0,
                height: 44.0,
                decoration: BoxDecoration(
                  color: FFAppState().selectOption == 0
                      ? FlutterFlowTheme.of(context).primary
                      : FlutterFlowTheme.of(context).secondaryText,
                  borderRadius: BorderRadius.circular(10.0),
                  shape: BoxShape.rectangle,
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Icon(
                  Icons.star_sharp,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().update(() {
                  FFAppState().selectOption = 1;
                  FFAppState().selectedCategory = 'Chair';
                });
              },
              child: Container(
                width: 44.0,
                height: 44.0,
                decoration: BoxDecoration(
                  color: FFAppState().selectOption == 1
                      ? FlutterFlowTheme.of(context).primary
                      : FlutterFlowTheme.of(context).secondaryText,
                  borderRadius: BorderRadius.circular(10.0),
                  shape: BoxShape.rectangle,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Icon(
                    FFIcons.kchairicon,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().update(() {
                  FFAppState().selectOption = 2;
                  FFAppState().selectedCategory = 'Table';
                });
              },
              child: Container(
                width: 44.0,
                height: 44.0,
                decoration: BoxDecoration(
                  color: FFAppState().selectOption == 2
                      ? FlutterFlowTheme.of(context).primary
                      : FlutterFlowTheme.of(context).secondaryText,
                  borderRadius: BorderRadius.circular(10.0),
                  shape: BoxShape.rectangle,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Icon(
                    FFIcons.ktable,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().update(() {
                  FFAppState().selectOption = 3;
                  FFAppState().selectedCategory = 'Sofa';
                });
              },
              child: Container(
                width: 44.0,
                height: 44.0,
                decoration: BoxDecoration(
                  color: FFAppState().selectOption == 3
                      ? FlutterFlowTheme.of(context).primary
                      : FlutterFlowTheme.of(context).secondaryText,
                  borderRadius: BorderRadius.circular(10.0),
                  shape: BoxShape.rectangle,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Icon(
                    FFIcons.ksofa,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().update(() {
                  FFAppState().selectOption = 4;
                  FFAppState().selectedCategory = 'Bed';
                });
              },
              child: Container(
                width: 44.0,
                height: 44.0,
                decoration: BoxDecoration(
                  color: FFAppState().selectOption == 4
                      ? FlutterFlowTheme.of(context).primary
                      : FlutterFlowTheme.of(context).secondaryText,
                  borderRadius: BorderRadius.circular(10.0),
                  shape: BoxShape.rectangle,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Icon(
                    FFIcons.kbed,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 11.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 1,
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'Popular',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'LufgaMedium',
                          color: Colors.black,
                          fontSize: 8.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'Chair',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'LufgaMedium',
                          color: Colors.black,
                          fontSize: 8.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'Workstation',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'LufgaMedium',
                          color: Colors.black,
                          fontSize: 8.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'Livingroom',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'LufgaMedium',
                          color: Colors.black,
                          fontSize: 8.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'Bedroom',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'LufgaMedium',
                          color: Colors.black,
                          fontSize: 8.0,
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
    );
  }
}
