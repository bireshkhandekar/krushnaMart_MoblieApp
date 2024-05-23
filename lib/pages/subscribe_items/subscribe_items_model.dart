import '/backend/api_requests/api_calls.dart';
import '/components/customdateselection/customdateselection_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'subscribe_items_widget.dart' show SubscribeItemsWidget;
import 'package:flutter/material.dart';

class SubscribeItemsModel extends FlutterFlowModel<SubscribeItemsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Bottom Sheet - Everyday] action in everydayButton widget.
  int? qty;
  // Models for customdateselection dynamic component.
  late FlutterFlowDynamicModels<CustomdateselectionModel>
      customdateselectionModels;
  // Stores action output result for [Backend Call - API (DeductfundsWallet)] action in Button widget.
  ApiCallResponse? dailywalletResult;
  // Stores action output result for [Backend Call - API (SubscribeItems API)] action in Button widget.
  ApiCallResponse? apisubscribeitemresult;
  // Stores action output result for [Backend Call - API (DeductfundsWallet)] action in Button widget.
  ApiCallResponse? customwalletResult;
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
