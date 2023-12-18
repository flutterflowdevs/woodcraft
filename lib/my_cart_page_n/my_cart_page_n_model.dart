import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/count_controller_widget.dart';
import '/components/empty_cart_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'my_cart_page_n_widget.dart' show MyCartPageNWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyCartPageNModel extends FlutterFlowModel<MyCartPageNWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Delete Row] action in Icon widget.
  List<CartsCollectionRow>? deletedRow;
  // Stores action output result for [Custom Action - increaseAmount] action in countController widget.
  int? totalPrice;
  // Stores action output result for [Backend Call - Update Row] action in countController widget.
  List<CartsCollectionRow>? actionResult;
  // Stores action output result for [Custom Action - removeAmount] action in countController widget.
  int? ress;
  // Stores action output result for [Backend Call - Update Row] action in countController widget.
  List<CartsCollectionRow>? actionPrice;
  // Stores action output result for [Backend Call - Delete Row] action in countController widget.
  List<CartsCollectionRow>? deletedRowOnAction;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
