import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'checkout_page_n_model.dart';
export 'checkout_page_n_model.dart';

class CheckoutPageNWidget extends StatefulWidget {
  const CheckoutPageNWidget({Key? key}) : super(key: key);

  @override
  _CheckoutPageNWidgetState createState() => _CheckoutPageNWidgetState();
}

class _CheckoutPageNWidgetState extends State<CheckoutPageNWidget> {
  late CheckoutPageNModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckoutPageNModel());

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
        backgroundColor: Color(0xFFE5E5E5),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pop();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20.0,
            ),
          ),
          title: Text(
            'Checkout',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'LufgaBold',
                  color: FlutterFlowTheme.of(context).secondary,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  useGoogleFonts: false,
                ),
          ),
          actions: [],
          centerTitle: true,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            19.0, 18.0, 29.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                              child: Checkbox(
                                value: _model.forDefaultAddressValue ??= false,
                                onChanged: (newValue) async {
                                  setState(() => _model.forDefaultAddressValue =
                                      newValue!);
                                },
                                activeColor: Color(0xFF074D42),
                                checkColor: FlutterFlowTheme.of(context).info,
                              ),
                            ),
                            Text(
                              'Use default shipping address',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 12.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      if (!_model.forDefaultAddressValue!)
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    19.0, 23.0, 24.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          3.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Select delivery state',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'LufgaRegular',
                                              color: Color(0xFF121212),
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    19.0, 11.0, 19.0, 0.0),
                                child: FlutterFlowDropDown<String>(
                                  controller: _model.dropDownValueController ??=
                                      FormFieldController<String>(null),
                                  options: [
                                    'Rajasthan',
                                    'Delhi',
                                    'West Bengal',
                                    'Maharashtra',
                                    'Tamil Nadu',
                                    'Andhra Pradesh',
                                    'Goa',
                                    'Punjab',
                                    'Himachal Pradesh',
                                    'Madhya Pradesh',
                                    'Uttrakhand',
                                    'Haryana',
                                    'Karnataka',
                                    'Gujarat',
                                    'Kerala'
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.dropDownValue = val),
                                  width: double.infinity,
                                  height: 50.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'LufgaMedium',
                                        color: Colors.black,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                  hintText: 'Lagos - N5000',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    color: Color(0xFF495A57),
                                    size: 32.0,
                                  ),
                                  fillColor: Color(0xFFFAFAFA),
                                  elevation: 2.0,
                                  borderColor: Color(0xFFCCD8D6),
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    19.0, 27.0, 19.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          3.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Delivery Details',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'LufgaRegular',
                                              color: Color(0xFF121212),
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    19.0, 11.0, 19.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFAFAFA),
                                    borderRadius: BorderRadius.circular(6.0),
                                    border: Border.all(
                                      color: Color(0xFFCCD8D6),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.textController1,
                                      focusNode: _model.textFieldFocusNode1,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'LufgaSemiBold',
                                              color: Colors.black,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                        hintText: 'Full Name',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'LufgaMedium',
                                              color: Colors.black,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      validator: _model.textController1Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    19.0, 11.0, 19.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFAFAFA),
                                    borderRadius: BorderRadius.circular(6.0),
                                    border: Border.all(
                                      color: Color(0xFFCCD8D6),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.textController2,
                                      focusNode: _model.textFieldFocusNode2,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'LufgaSemiBold',
                                              color: Colors.black,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                        hintText: 'Email',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'LufgaMedium',
                                              color: Colors.black,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      validator: _model.textController2Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    19.0, 11.0, 19.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFAFAFA),
                                    borderRadius: BorderRadius.circular(6.0),
                                    border: Border.all(
                                      color: Color(0xFFCCD8D6),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.textController3,
                                      focusNode: _model.textFieldFocusNode3,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'LufgaSemiBold',
                                              color: Colors.black,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                        hintText: 'Phone Number',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'LufgaMedium',
                                              color: Colors.black,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      validator: _model.textController3Validator
                                          .asValidator(context),
                                      inputFormatters: [_model.textFieldMask3],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    19.0, 11.0, 19.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFAFAFA),
                                    borderRadius: BorderRadius.circular(6.0),
                                    border: Border.all(
                                      color: Color(0xFFCCD8D6),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.textController4,
                                      focusNode: _model.textFieldFocusNode4,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'LufgaSemiBold',
                                              color: Colors.black,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                        hintText: 'Address',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'LufgaMedium',
                                              color: Colors.black,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      validator: _model.textController4Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    19.0, 18.0, 29.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          visualDensity: VisualDensity.compact,
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                      ),
                                      child: Checkbox(
                                        value: _model.checkboxValue ??= true,
                                        onChanged: (newValue) async {
                                          setState(() =>
                                              _model.checkboxValue = newValue!);
                                        },
                                        activeColor: Color(0xFF074D42),
                                        checkColor:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                    ),
                                    Text(
                                      'Make this address default',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 12.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            19.0, 51.0, 19.0, 53.0),
                        child: Container(
                          width: double.infinity,
                          height: 239.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    35.0, 26.0, 27.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Subtotal',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'LufgaSemiBold',
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Text(
                                      FFAppState().totalAmount.toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'LufgaMedium',
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    35.0, 16.0, 27.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Shipping',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'LufgaSemiBold',
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Text(
                                      FFAppState().shippingCharges.toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'LufgaMedium',
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    35.0, 28.0, 27.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'LufgaBold',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        (FFAppState().totalAmount +
                                                FFAppState().shippingCharges)
                                            .toString(),
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'LufgaBold',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    13.0, 26.0, 15.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.buttonModel,
                                  updateCallback: () => setState(() {}),
                                  child: ButtonWidget(
                                    btnName: 'Pay Now',
                                    btnAction: () async {
                                      var _shouldSetState = false;
                                      if (_model.forDefaultAddressValue!) {
                                        context.pushNamed('PaymentPage_n');

                                        if (_shouldSetState) setState(() {});
                                        return;
                                      } else {
                                        if ((_model.textController1.text == null || _model.textController1.text == '') &&
                                            (_model.textController2.text ==
                                                    null ||
                                                _model.textController2.text ==
                                                    '') &&
                                            (_model.textController3.text ==
                                                    null ||
                                                _model.textController3.text ==
                                                    '') &&
                                            (_model.textController4.text ==
                                                    null ||
                                                _model.textController4.text ==
                                                    '') &&
                                            (_model.dropDownValue == null ||
                                                _model.dropDownValue == '')) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Empty Fields'),
                                                content: Text(
                                                    'Fill all the fields before checkout.'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        } else {
                                          _model.userAddress =
                                              await UsersAddressTable().insert({
                                            'full_address':
                                                _model.textController4.text,
                                            'name_on_address':
                                                _model.textController1.text,
                                            'state': _model.dropDownValue,
                                            'different_email':
                                                _model.textController2.text,
                                            'phone_number':
                                                _model.textController3.text,
                                            'auth_id': currentUserUid,
                                            'created_at':
                                                supaSerialize<DateTime>(
                                                    getCurrentTimestamp),
                                          });
                                          _shouldSetState = true;
                                          if (_model.checkboxValue!) {
                                            await UsersTable().update(
                                              data: {
                                                'users_address_id':
                                                    _model.userAddress?.id,
                                              },
                                              matchingRows: (rows) => rows.eq(
                                                'auth_id',
                                                currentUserUid,
                                              ),
                                            );
                                          }

                                          context.pushNamed(
                                            'PaymentPage_n',
                                            queryParameters: {
                                              'tempAddress': serializeParam(
                                                _model.userAddress,
                                                ParamType.SupabaseRow,
                                              ),
                                            }.withoutNulls,
                                          );

                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }
                                      }

                                      if (_shouldSetState) setState(() {});
                                    },
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
