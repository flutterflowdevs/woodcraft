import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/button_widget.dart';
import '/components/card_details_widget.dart';
import '/components/ordered_items_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'payment_page_n_widget.dart' show PaymentPageNWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentPageNModel extends FlutterFlowModel<PaymentPageNWidget> {
  ///  Local state fields for this page.

  int index = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for card_details component.
  late CardDetailsModel cardDetailsModel;
  // Model for button component.
  late ButtonModel buttonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    cardDetailsModel = createModel(context, () => CardDetailsModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  void dispose() {
    unfocusNode.dispose();
    cardDetailsModel.dispose();
    buttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
