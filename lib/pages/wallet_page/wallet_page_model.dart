import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'wallet_page_widget.dart' show WalletPageWidget;
import 'package:flutter/material.dart';

class WalletPageModel extends FlutterFlowModel<WalletPageWidget> {
  ///  Local state fields for this page.

  int pageno = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (token validetion)] action in WalletPage widget.
  ApiCallResponse? apiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in WalletPage widget.
  ApiCallResponse? apiResultrefreshtoken;
  // State field(s) for addAmount widget.
  FocusNode? addAmountFocusNode;
  TextEditingController? addAmountTextController;
  String? Function(BuildContext, String?)? addAmountTextControllerValidator;
  String? _addAmountTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (token validetion)] action in Button widget.
  ApiCallResponse? apiResultatokenvalid;
  // Stores action output result for [Backend Call - API (refresh token)] action in Button widget.
  ApiCallResponse? resultrefreshtoken;
  // Stores action output result for [Custom Action - razorpayaction] action in Button widget.
  dynamic paymentresult;
  // Stores action output result for [Backend Call - API (Add amount Wallet)] action in Button widget.
  ApiCallResponse? addamountwallet;

  @override
  void initState(BuildContext context) {
    addAmountTextControllerValidator = _addAmountTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    addAmountFocusNode?.dispose();
    addAmountTextController?.dispose();
  }
}
