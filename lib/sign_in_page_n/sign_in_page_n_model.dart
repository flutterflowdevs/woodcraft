import '/auth/supabase_auth/auth_util.dart';
import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'sign_in_page_n_widget.dart' show SignInPageNWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignInPageNModel extends FlutterFlowModel<SignInPageNWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SignInMail widget.
  FocusNode? signInMailFocusNode;
  TextEditingController? signInMailController;
  String? Function(BuildContext, String?)? signInMailControllerValidator;
  // State field(s) for SignInPass widget.
  FocusNode? signInPassFocusNode;
  TextEditingController? signInPassController;
  late bool signInPassVisibility;
  String? Function(BuildContext, String?)? signInPassControllerValidator;
  // Model for button component.
  late ButtonModel buttonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    signInPassVisibility = false;
    buttonModel = createModel(context, () => ButtonModel());
  }

  void dispose() {
    signInMailFocusNode?.dispose();
    signInMailController?.dispose();

    signInPassFocusNode?.dispose();
    signInPassController?.dispose();

    buttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
