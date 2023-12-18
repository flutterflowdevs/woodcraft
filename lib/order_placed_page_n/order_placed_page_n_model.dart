import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'order_placed_page_n_widget.dart' show OrderPlacedPageNWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderPlacedPageNModel extends FlutterFlowModel<OrderPlacedPageNWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for button component.
  late ButtonModel buttonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  void dispose() {
    unfocusNode.dispose();
    buttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
