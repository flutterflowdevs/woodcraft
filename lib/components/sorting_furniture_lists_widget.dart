import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sorting_furniture_lists_model.dart';
export 'sorting_furniture_lists_model.dart';

class SortingFurnitureListsWidget extends StatefulWidget {
  const SortingFurnitureListsWidget({Key? key}) : super(key: key);

  @override
  _SortingFurnitureListsWidgetState createState() =>
      _SortingFurnitureListsWidgetState();
}

class _SortingFurnitureListsWidgetState
    extends State<SortingFurnitureListsWidget> {
  late SortingFurnitureListsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SortingFurnitureListsModel());
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
      alignment: AlignmentDirectional(1.0, -1.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 100.0, 10.0, 10.0),
        child: Container(
          width: 230.0,
          height: 160.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.circle,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 22.0,
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Popularity',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'LufgaSemiBold',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.circle,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 22.0,
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Price Low to High',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'LufgaSemiBold',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.circle,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 22.0,
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Price High to Low',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'LufgaSemiBold',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.circle,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 22.0,
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Customer Rating',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'LufgaSemiBold',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
