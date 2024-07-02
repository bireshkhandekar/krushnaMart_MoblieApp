import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_subscribed_items_widget.dart' show MySubscribedItemsWidget;
import 'package:flutter/material.dart';

class MySubscribedItemsModel extends FlutterFlowModel<MySubscribedItemsWidget> {
  ///  Local state fields for this page.

  int pageno = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (token validetion)] action in MySubscribedItems widget.
  ApiCallResponse? apiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in MySubscribedItems widget.
  ApiCallResponse? apiResultrefreshtoken;
  // Stores action output result for [Backend Call - API (token validetion)] action in Text widget.
  ApiCallResponse? detailsapiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in Text widget.
  ApiCallResponse? detailsapiResultrefreshtoken;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
