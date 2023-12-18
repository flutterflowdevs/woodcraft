import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'sign_up_page_n_widget.dart' show SignUpPageNWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpPageNModel extends FlutterFlowModel<SignUpPageNWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for UserName widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameController;
  String? Function(BuildContext, String?)? userNameControllerValidator;
  // State field(s) for SignUpMail widget.
  FocusNode? signUpMailFocusNode;
  TextEditingController? signUpMailController;
  String? Function(BuildContext, String?)? signUpMailControllerValidator;
  // State field(s) for SignUpPass widget.
  FocusNode? signUpPassFocusNode;
  TextEditingController? signUpPassController;
  late bool signUpPassVisibility;
  String? Function(BuildContext, String?)? signUpPassControllerValidator;
  // State field(s) for SignUpConfPass widget.
  FocusNode? signUpConfPassFocusNode;
  TextEditingController? signUpConfPassController;
  late bool signUpConfPassVisibility;
  String? Function(BuildContext, String?)? signUpConfPassControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for button component.
  late ButtonModel buttonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    signUpPassVisibility = false;
    signUpConfPassVisibility = false;
    buttonModel = createModel(context, () => ButtonModel());
  }

  void dispose() {
    userNameFocusNode?.dispose();
    userNameController?.dispose();

    signUpMailFocusNode?.dispose();
    signUpMailController?.dispose();

    signUpPassFocusNode?.dispose();
    signUpPassController?.dispose();

    signUpConfPassFocusNode?.dispose();
    signUpConfPassController?.dispose();

    buttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
