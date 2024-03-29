import '/flutter_flow/flutter_flow_util.dart';
import 'my_orders_page_widget.dart' show MyOrdersPageWidget;
import 'package:flutter/material.dart';

class MyOrdersPageModel extends FlutterFlowModel<MyOrdersPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
