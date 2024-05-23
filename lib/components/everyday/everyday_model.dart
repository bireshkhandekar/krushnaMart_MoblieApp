import '/flutter_flow/flutter_flow_util.dart';
import 'everyday_widget.dart' show EverydayWidget;
import 'package:flutter/material.dart';

class EverydayModel extends FlutterFlowModel<EverydayWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // Stores action output result for [Custom Action - convertTwodatesToDays] action in Button widget.
  int? daysresult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
