import '/flutter_flow/flutter_flow_util.dart';
import 'my_subscribed_items_widget.dart' show MySubscribedItemsWidget;
import 'package:flutter/material.dart';

class MySubscribedItemsModel extends FlutterFlowModel<MySubscribedItemsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
