import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ordered_items_list_model.dart';
export 'ordered_items_list_model.dart';

class OrderedItemsListWidget extends StatefulWidget {
  const OrderedItemsListWidget({
    Key? key,
    required this.chairName,
    required this.workDays,
    required this.chairPrice,
    required this.chairPath,
  }) : super(key: key);

  final String? chairName;
  final String? workDays;
  final String? chairPrice;
  final String? chairPath;

  @override
  _OrderedItemsListWidgetState createState() => _OrderedItemsListWidgetState();
}

class _OrderedItemsListWidgetState extends State<OrderedItemsListWidget> {
  late OrderedItemsListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderedItemsListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 116.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Image.network(
              widget.chairPath!,
              width: 100.0,
              height: 90.0,
              fit: BoxFit.contain,
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 5.0),
                            child: Text(
                              widget.chairName!,
                              maxLines: 2,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                        Text(
                          widget.workDays!,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Raleway',
                                    color: Color(0xFFD6D6D6),
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      widget.chairPrice!,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Raleway',
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ].addToStart(SizedBox(width: 12.0)),
      ),
    );
  }
}
