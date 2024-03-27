import '/flutter_flow/flutter_flow_util.dart';
import 'subscribe_items_widget.dart' show SubscribeItemsWidget;
import 'package:flutter/material.dart';

class SubscribeItemsModel extends FlutterFlowModel<SubscribeItemsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Bottom Sheet - Everyday] action in Button widget.
  int? qty;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
