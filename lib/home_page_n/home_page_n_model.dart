import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/chair_descp_widget.dart';
import '/components/home_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_n_widget.dart' show HomePageNWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageNModel extends FlutterFlowModel<HomePageNWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for home_bar component.
  late HomeBarModel homeBarModel;
  // Stores action output result for [Backend Call - Update Row] action in chair_descp widget.
  List<UsersRow>? favCopy;
  // Stores action output result for [Backend Call - Update Row] action in chair_descp widget.
  List<UsersRow>? favCopyCopy;
  // Stores action output result for [Backend Call - Update Row] action in chair_descp widget.
  List<UsersRow>? favCopyCopy2;
  // Stores action output result for [Backend Call - Update Row] action in chair_descp widget.
  List<UsersRow>? favCopyCopyCopy;
  // Stores action output result for [Backend Call - Update Row] action in chair_descp widget.
  List<UsersRow>? favCopyCopyCopy2;
  // Stores action output result for [Backend Call - Update Row] action in chair_descp widget.
  List<UsersRow>? favCopyCopy2Copy;
  // Stores action output result for [Backend Call - Update Row] action in chair_descp widget.
  List<UsersRow>? favCopyCopyCopy3;
  // Stores action output result for [Backend Call - Update Row] action in chair_descp widget.
  List<UsersRow>? favCopyCopy2Copy2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    homeBarModel = createModel(context, () => HomeBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    homeBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
