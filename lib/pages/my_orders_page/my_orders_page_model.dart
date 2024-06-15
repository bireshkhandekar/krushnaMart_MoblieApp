import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_orders_page_widget.dart' show MyOrdersPageWidget;
import 'package:flutter/material.dart';

class MyOrdersPageModel extends FlutterFlowModel<MyOrdersPageWidget> {
  ///  Local state fields for this page.

  int? pageno = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (token validetion)] action in MyOrdersPage widget.
  ApiCallResponse? apiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in MyOrdersPage widget.
  ApiCallResponse? apiResultrefreshtoken;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - API (token validetion)] action in Button widget.
  ApiCallResponse? detailsapiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in Button widget.
  ApiCallResponse? detailsapiResultrefreshtoken;
  // Stores action output result for [Backend Call - API (token validetion)] action in Text widget.
  ApiCallResponse? cancelapiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in Text widget.
  ApiCallResponse? cancelapiResultrefreshtoken;
  // Stores action output result for [Backend Call - API (orderCanceled)] action in Text widget.
  ApiCallResponse? apiResultmuj;
  // Stores action output result for [Backend Call - API (token validetion)] action in Button widget.
  ApiCallResponse? cancelldetailsapiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in Button widget.
  ApiCallResponse? cancelldetailsapiResultrefreshtoken;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
