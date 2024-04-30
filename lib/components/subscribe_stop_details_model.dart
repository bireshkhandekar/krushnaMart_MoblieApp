import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'subscribe_stop_details_widget.dart' show SubscribeStopDetailsWidget;
import 'package:flutter/material.dart';

class SubscribeStopDetailsModel
    extends FlutterFlowModel<SubscribeStopDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
