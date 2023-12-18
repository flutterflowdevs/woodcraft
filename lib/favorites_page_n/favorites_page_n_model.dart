import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/chair_descp_widget.dart';
import '/components/favlist_empty_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'favorites_page_n_widget.dart' show FavoritesPageNWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FavoritesPageNModel extends FlutterFlowModel<FavoritesPageNWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Update Row] action in chair_descp widget.
  List<UsersRow>? favCopyCopyCopy2;
  // Stores action output result for [Backend Call - Update Row] action in chair_descp widget.
  List<UsersRow>? favCopyCopy2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
