import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chair_descp_model.dart';
export 'chair_descp_model.dart';

class ChairDescpWidget extends StatefulWidget {
  const ChairDescpWidget({
    Key? key,
    this.tapAction,
    this.prodImage,
    this.prodPrice,
    this.prodName,
    required this.icon1,
    required this.icon2,
    this.productId,
    this.bookmarkedAction,
    this.unbookmarkedAction,
    required this.favorites,
  }) : super(key: key);

  final Future<dynamic> Function()? tapAction;
  final String? prodImage;
  final int? prodPrice;
  final String? prodName;
  final Widget? icon1;
  final Widget? icon2;
  final int? productId;
  final Future<dynamic> Function()? bookmarkedAction;
  final Future<dynamic> Function()? unbookmarkedAction;
  final List<String>? favorites;

  @override
  _ChairDescpWidgetState createState() => _ChairDescpWidgetState();
}

class _ChairDescpWidgetState extends State<ChairDescpWidget> {
  late ChairDescpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChairDescpModel());
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
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            await widget.tapAction?.call();
          },
          child: Container(
            width: double.infinity,
            height: 180.0,
            decoration: BoxDecoration(),
            child: Container(
              width: 160.0,
              height: double.infinity,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Container(
                      width: double.infinity,
                      height: 95.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      alignment: AlignmentDirectional(0.0, 1.0),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: CachedNetworkImage(
                                  fadeInDuration: Duration(milliseconds: 500),
                                  fadeOutDuration: Duration(milliseconds: 500),
                                  imageUrl: widget.prodImage!,
                                  width: double.infinity,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    widget.prodName!,
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFAAAAAA),
                                          fontSize: 12.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 3.0, 0.0, 3.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    '\$${widget.prodPrice.toString()}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF121212),
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                if (!widget.favorites!
                                    .contains(widget.productId!.toString()))
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await widget.bookmarkedAction?.call();
                                      },
                                      child: Container(
                                        width: 20.0,
                                        height: 20.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          shape: BoxShape.circle,
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: widget.icon1!,
                                      ),
                                    ),
                                  ),
                                if (widget.favorites?.contains(
                                        widget.productId!.toString()) ??
                                    true)
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await widget.unbookmarkedAction?.call();
                                      },
                                      child: Container(
                                        width: 20.0,
                                        height: 20.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          shape: BoxShape.circle,
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: widget.icon2!,
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
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
