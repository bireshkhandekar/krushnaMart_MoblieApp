import '/backend/api_requests/api_calls.dart';
import '/components/customdateselection/customdateselection_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'subscribe_items_widget.dart' show SubscribeItemsWidget;
import 'package:flutter/material.dart';

class SubscribeItemsModel extends FlutterFlowModel<SubscribeItemsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (token validetion)] action in SubscribeItems widget.
  ApiCallResponse? apiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in SubscribeItems widget.
  ApiCallResponse? apiResultrefreshtoken;
  // Stores action output result for [Backend Call - API (token validetion)] action in everydayButton widget.
  ApiCallResponse? everyapiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in everydayButton widget.
  ApiCallResponse? everyapiResultrefreshtoken;
  // Stores action output result for [Bottom Sheet - Everyday] action in everydayButton widget.
  int? qty;
  // Stores action output result for [Backend Call - API (token validetion)] action in customButton widget.
  ApiCallResponse? custapiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in customButton widget.
  ApiCallResponse? custapiResultrefreshtoken;
  // Stores action output result for [Custom Action - showCustomDatePicker] action in customButton widget.
  List<String>? customDates;
  // Models for customdateselection dynamic component.
  late FlutterFlowDynamicModels<CustomdateselectionModel>
      customdateselectionModels;
  // Stores action output result for [Backend Call - API (token validetion)] action in Button widget.
  ApiCallResponse? calapiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in Button widget.
  ApiCallResponse? calapiResultrefreshtoken;
  // Stores action output result for [Backend Call - API (token validetion)] action in Button widget.
  ApiCallResponse? dailyapiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in Button widget.
  ApiCallResponse? dailyapiResultrefreshtoken;
  // Stores action output result for [Backend Call - API (SubscribeItems API)] action in Button widget.
  ApiCallResponse? apisubscribeitemresult;
  // Stores action output result for [Backend Call - API (token validetion)] action in Button widget.
  ApiCallResponse? customapiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in Button widget.
  ApiCallResponse? customapiResultrefreshtoken;
  // Stores action output result for [Backend Call - API (SubscribeItemscustomApi)] action in Button widget.
  ApiCallResponse? customapisubscribeitemresult;

  @override
  void initState(BuildContext context) {
    customdateselectionModels =
        FlutterFlowDynamicModels(() => CustomdateselectionModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customdateselectionModels.dispose();
  }
}
