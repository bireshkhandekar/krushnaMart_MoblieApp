import '/backend/api_requests/api_calls.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'payment_page_widget.dart' show PaymentPageWidget;
import 'package:flutter/material.dart';

class PaymentPageModel extends FlutterFlowModel<PaymentPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // Stores action output result for [Backend Call - API (token validetion)] action in Button widget.
  ApiCallResponse? walletapiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in Button widget.
  ApiCallResponse? walletapiResultrefreshtoken;
  // Stores action output result for [Backend Call - SQLite (allget)] action in Button widget.
  List<AllgetRow>? allitems;
  // Stores action output result for [Backend Call - SQLite (getTotalprice)] action in Button widget.
  List<GetTotalpriceRow>? totalprice;
  // Stores action output result for [Backend Call - API (Get Wallet Balance)] action in Button widget.
  ApiCallResponse? getWalletBalence;
  // Stores action output result for [Custom Action - walletBalenceCheck] action in Button widget.
  bool? walletbalencecheck;
  // Stores action output result for [Backend Call - API (orderApi)] action in Button widget.
  ApiCallResponse? orderresponce;
  // Stores action output result for [Backend Call - API (token validetion)] action in Button widget.
  ApiCallResponse? onlineapiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in Button widget.
  ApiCallResponse? onlineapiResultrefreshtoken;
  // Stores action output result for [Backend Call - SQLite (allget)] action in Button widget.
  List<AllgetRow>? allitemsonline;
  // Stores action output result for [Backend Call - SQLite (getTotalprice)] action in Button widget.
  List<GetTotalpriceRow>? totalpriceonline;
  // Stores action output result for [Custom Action - razorpayaction] action in Button widget.
  dynamic onlinePaymentResult;
  // Stores action output result for [Backend Call - API (token validetion)] action in Button widget.
  ApiCallResponse? apiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in Button widget.
  ApiCallResponse? apiResultrefreshtoken;
  // Stores action output result for [Backend Call - API (orderApi online)] action in Button widget.
  ApiCallResponse? orderresponceonline;
  // Stores action output result for [Backend Call - API (token validetion)] action in Button widget.
  ApiCallResponse? cashapiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in Button widget.
  ApiCallResponse? cashapiResultrefreshtoken;
  // Stores action output result for [Backend Call - SQLite (allget)] action in Button widget.
  List<AllgetRow>? allgetitemcash;
  // Stores action output result for [Backend Call - SQLite (getTotalprice)] action in Button widget.
  List<GetTotalpriceRow>? getTotalpricecash;
  // Stores action output result for [Backend Call - API (cashOrder)] action in Button widget.
  ApiCallResponse? cashorderApiresult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
