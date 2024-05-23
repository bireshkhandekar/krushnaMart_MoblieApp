import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'subscribe_stop_details_widget.dart' show SubscribeStopDetailsWidget;
import 'package:flutter/material.dart';

class SubscribeStopDetailsModel
    extends FlutterFlowModel<SubscribeStopDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (subscribe update)] action in Text widget.
  ApiCallResponse? subdisable;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
