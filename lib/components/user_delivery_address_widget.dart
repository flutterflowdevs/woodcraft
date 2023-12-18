import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_delivery_address_model.dart';
export 'user_delivery_address_model.dart';

class UserDeliveryAddressWidget extends StatefulWidget {
  const UserDeliveryAddressWidget({
    Key? key,
    required this.userName,
    required this.userAddress,
    required this.userPhNum,
    required this.userState,
  }) : super(key: key);

  final String? userName;
  final String? userAddress;
  final String? userPhNum;
  final String? userState;

  @override
  _UserDeliveryAddressWidgetState createState() =>
      _UserDeliveryAddressWidgetState();
}

class _UserDeliveryAddressWidgetState extends State<UserDeliveryAddressWidget> {
  late UserDeliveryAddressModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserDeliveryAddressModel());
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
      height: 130.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 14.0, 25.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.userName!,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'LufgaBold',
                        color: FlutterFlowTheme.of(context).secondary,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: false,
                      ),
                ),
                FaIcon(
                  FontAwesomeIcons.edit,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 23.0,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 21.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    widget.userAddress!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'LufgaMedium',
                          color: Color(0xFF333A42),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
                    child: Text(
                      widget.userState!,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'LufgaMedium',
                            color: Color(0xFF333A42),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    widget.userPhNum!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'LufgaMedium',
                          color: Color(0xFF333A42),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
