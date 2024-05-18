import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'wallet_page_widget.dart' show WalletPageWidget;
import 'package:flutter/material.dart';

class WalletPageModel extends FlutterFlowModel<WalletPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for addAmount widget.
  FocusNode? addAmountFocusNode;
  TextEditingController? addAmountTextController;
  String? Function(BuildContext, String?)? addAmountTextControllerValidator;
  // Stores action output result for [Custom Action - razorpayaction] action in Button widget.
  dynamic paymentresult;
  // Stores action output result for [Backend Call - API (Add amount Wallet)] action in Button widget.
  ApiCallResponse? addamountwallet;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    addAmountFocusNode?.dispose();
    addAmountTextController?.dispose();
  }
}
