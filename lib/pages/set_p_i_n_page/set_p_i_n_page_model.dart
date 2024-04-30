import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'set_p_i_n_page_widget.dart' show SetPINPageWidget;
import 'package:flutter/material.dart';

class SetPINPageModel extends FlutterFlowModel<SetPINPageWidget> {
  ///  Local state fields for this page.

  bool? pinMatch = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for mobileNumber widget.
  FocusNode? mobileNumberFocusNode;
  TextEditingController? mobileNumberTextController;
  String? Function(BuildContext, String?)? mobileNumberTextControllerValidator;
  String? _mobileNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter your 10 digit moblie number';
    }

    if (val.length < 10) {
      return 'Enter your 10 digit moblie number';
    }

    return null;
  }

  // State field(s) for pin widget.
  FocusNode? pinFocusNode;
  TextEditingController? pinTextController;
  late bool pinVisibility;
  String? Function(BuildContext, String?)? pinTextControllerValidator;
  String? _pinTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Set 4 digit PIN';
    }

    if (val.length < 4) {
      return 'Please Set 4 digit PIN';
    }

    return null;
  }

  // State field(s) for conformpin widget.
  FocusNode? conformpinFocusNode;
  TextEditingController? conformpinTextController;
  late bool conformpinVisibility;
  String? Function(BuildContext, String?)? conformpinTextControllerValidator;
  String? _conformpinTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please conform 4 digit PIN';
    }

    if (val.length < 4) {
      return 'Please conform 4 digit PIN';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (User Set Pin API)] action in signup widget.
  ApiCallResponse? setPinApiResponce;

  @override
  void initState(BuildContext context) {
    mobileNumberTextControllerValidator = _mobileNumberTextControllerValidator;
    pinVisibility = false;
    pinTextControllerValidator = _pinTextControllerValidator;
    conformpinVisibility = false;
    conformpinTextControllerValidator = _conformpinTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileNumberFocusNode?.dispose();
    mobileNumberTextController?.dispose();

    pinFocusNode?.dispose();
    pinTextController?.dispose();

    conformpinFocusNode?.dispose();
    conformpinTextController?.dispose();
  }
}
