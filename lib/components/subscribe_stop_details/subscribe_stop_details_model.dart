import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'subscribe_stop_details_widget.dart' show SubscribeStopDetailsWidget;
import 'package:flutter/material.dart';

class SubscribeStopDetailsModel
    extends FlutterFlowModel<SubscribeStopDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (token validetion)] action in Text widget.
  ApiCallResponse? apiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in Text widget.
  ApiCallResponse? apiResultrefreshtoken;
  // Stores action output result for [Backend Call - API (subscribe update)] action in Text widget.
  ApiCallResponse? subdisable;
  // Stores action output result for [Backend Call - API (token validetion)] action in Text widget.
  ApiCallResponse? pauseapiResulta5jCopy;
  // Stores action output result for [Backend Call - API (refresh token)] action in Text widget.
  ApiCallResponse? pauseapiResultrefreshtoken;
  // Stores action output result for [Backend Call - API (subscription pause Api)] action in Text widget.
  ApiCallResponse? pauseapiresult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
