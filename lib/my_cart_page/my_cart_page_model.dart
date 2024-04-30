import '/flutter_flow/flutter_flow_util.dart';
import 'my_cart_page_widget.dart' show MyCartPageWidget;
import 'package:flutter/material.dart';

class MyCartPageModel extends FlutterFlowModel<MyCartPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
