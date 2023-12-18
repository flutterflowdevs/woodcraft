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
import 'add_new_address_page_n_model.dart';
export 'add_new_address_page_n_model.dart';

class AddNewAddressPageNWidget extends StatefulWidget {
  const AddNewAddressPageNWidget({Key? key}) : super(key: key);

  @override
  _AddNewAddressPageNWidgetState createState() =>
      _AddNewAddressPageNWidgetState();
}

class _AddNewAddressPageNWidgetState extends State<AddNewAddressPageNWidget> {
  late AddNewAddressPageNModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddNewAddressPageNModel());

    _model.fullNameController ??= TextEditingController();
    _model.fullNameFocusNode ??= FocusNode();

    _model.emailController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    _model.phNoController ??= TextEditingController();
    _model.phNoFocusNode ??= FocusNode();

    _model.addressController ??= TextEditingController();
    _model.addressFocusNode ??= FocusNode();
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

    return FutureBuilder<List<UsersAddressRow>>(
      future: UsersAddressTable().querySingleRow(
        queryFn: (q) => q,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Color(0xFFE5E5E5),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFFE29547),
                  ),
                ),
              ),
            ),
          );
        }
        List<UsersAddressRow> addNewAddressPageNUsersAddressRowList =
            snapshot.data!;
        final addNewAddressPageNUsersAddressRow =
            addNewAddressPageNUsersAddressRowList.isNotEmpty
                ? addNewAddressPageNUsersAddressRowList.first
                : null;
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
                  context.safePop();
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
              title: Text(
                'Add New Address',
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
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 28.0, 0.0, 0.0),
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
                                24.0, 11.0, 24.0, 0.0),
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
                                  controller: _model.fullNameController,
                                  focusNode: _model.fullNameFocusNode,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'LufgaMedium',
                                          color: Colors.black,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w500,
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
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.fullNameControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 11.0, 24.0, 0.0),
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
                                  controller: _model.emailController,
                                  focusNode: _model.emailFocusNode,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'LufgaMedium',
                                          color: Colors.black,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w500,
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
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.emailControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 11.0, 24.0, 0.0),
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
                                  controller: _model.phNoController,
                                  focusNode: _model.phNoFocusNode,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'LufgaMedium',
                                          color: Colors.black,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w500,
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
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  keyboardType: TextInputType.phone,
                                  validator: _model.phNoControllerValidator
                                      .asValidator(context),
                                  inputFormatters: [_model.phNoMask],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 11.0, 24.0, 0.0),
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
                                  controller: _model.addressController,
                                  focusNode: _model.addressFocusNode,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'LufgaMedium',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
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
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.addressControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 11.0, 24.0, 0.0),
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
                              onChanged: (val) =>
                                  setState(() => _model.dropDownValue = val),
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
                                38.0, 59.0, 38.0, 0.0),
                            child: wrapWithModel(
                              model: _model.buttonModel,
                              updateCallback: () => setState(() {}),
                              child: ButtonWidget(
                                btnName: 'Add new address',
                                btnAction: () async {
                                  if (_model.checkboxValue == true) {
                                    _model.addedAddress =
                                        await UsersAddressTable().insert({
                                      'full_address':
                                          _model.addressController.text,
                                      'name_on_address':
                                          _model.fullNameController.text,
                                      'state': _model.dropDownValue,
                                      'different_email':
                                          _model.emailController.text,
                                      'phone_number':
                                          _model.phNoController.text,
                                      'auth_id': currentUserUid,
                                      'created_at': supaSerialize<DateTime>(
                                          getCurrentTimestamp),
                                    });
                                    await UsersTable().update(
                                      data: {
                                        'users_address_id':
                                            _model.addedAddress?.id,
                                      },
                                      matchingRows: (rows) => rows.eq(
                                        'auth_id',
                                        currentUserUid,
                                      ),
                                    );

                                    context.pushNamed('DeliveryAddressPage_n');
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title:
                                              Text('Add as Shipping Address'),
                                          content: Text(
                                              'Please select it as a shipping address'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }

                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                64.0, 17.0, 64.0, 0.0),
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
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxValue ??= true,
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.checkboxValue = newValue!);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).secondary,
                                    checkColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                Text(
                                  'Use as the shipping address',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'LufgaRegular',
                                        color: Color(0xFF808080),
                                        fontSize: 12.0,
                                        useGoogleFonts: false,
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
        );
      },
    );
  }
}
