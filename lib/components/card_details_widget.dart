import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'card_details_model.dart';
export 'card_details_model.dart';

class CardDetailsWidget extends StatefulWidget {
  const CardDetailsWidget({Key? key}) : super(key: key);

  @override
  _CardDetailsWidgetState createState() => _CardDetailsWidgetState();
}

class _CardDetailsWidgetState extends State<CardDetailsWidget> {
  late CardDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardDetailsModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(21.0, 0.0, 21.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 280.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(17.0, 20.0, 0.0, 0.0),
              child: Text(
                'Card Number',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).alternate,
                      fontSize: 13.0,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(19.74, 0.0, 19.74, 0.0),
              child: TextFormField(
                controller: _model.textController1,
                focusNode: _model.textFieldFocusNode1,
                obscureText: false,
                decoration: InputDecoration(
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'LufgaMedium',
                        color: Color(0xFF3A2C3C),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: false,
                      ),
                  hintText: '5627 2158 9854 8869',
                  hintStyle: FlutterFlowTheme.of(context).labelMedium,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFDBDBDE),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF6979F8),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      fontSize: 13.0,
                    ),
                keyboardType: TextInputType.number,
                validator: _model.textController1Validator.asValidator(context),
                inputFormatters: [_model.textFieldMask1],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(17.0, 20.0, 0.0, 0.0),
              child: Text(
                'Card Holder',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).alternate,
                      fontSize: 13.0,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(19.74, 0.0, 19.74, 0.0),
              child: TextFormField(
                controller: _model.textController2,
                focusNode: _model.textFieldFocusNode2,
                obscureText: false,
                decoration: InputDecoration(
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'LufgaMedium',
                        color: Color(0xFF3A2C3C),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: false,
                      ),
                  hintText: 'Najeeb Abubakar',
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Open Sans',
                        fontSize: 13.0,
                      ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFDBDBDE),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF6979F8),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
                validator: _model.textController2Validator.asValidator(context),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            17.0, 20.0, 0.0, 0.0),
                        child: Text(
                          'Expires Date',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.of(context).alternate,
                                fontSize: 13.0,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            19.74, 0.0, 10.0, 0.0),
                        child: TextFormField(
                          controller: _model.textController3,
                          focusNode: _model.textFieldFocusNode3,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'LufgaMedium',
                                  color: Color(0xFF3A2C3C),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                            hintText: '12/08',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  fontSize: 13.0,
                                ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBDBDE),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF6979F8),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          keyboardType: TextInputType.datetime,
                          validator: _model.textController3Validator
                              .asValidator(context),
                          inputFormatters: [_model.textFieldMask3],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            17.0, 20.0, 0.0, 0.0),
                        child: Text(
                          'CVV',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.of(context).alternate,
                                fontSize: 13.0,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 0.0, 0.0),
                        child: TextFormField(
                          controller: _model.textController4,
                          focusNode: _model.textFieldFocusNode4,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'LufgaMedium',
                                  color: Color(0xFF3A2C3C),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                            hintText: '123',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  fontSize: 13.0,
                                ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFDBDBDE),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF6979F8),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          keyboardType: TextInputType.number,
                          validator: _model.textController4Validator
                              .asValidator(context),
                          inputFormatters: [_model.textFieldMask4],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
