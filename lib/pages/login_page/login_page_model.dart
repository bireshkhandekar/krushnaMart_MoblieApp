import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
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
      return 'Field is required';
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
      return 'Field is required';
    }

    if (val.length < 4) {
      return 'Enter your 4 digit PIN';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (User login API)] action in signin widget.
  ApiCallResponse? apiResult;

  @override
  void initState(BuildContext context) {
    mobileNumberTextControllerValidator = _mobileNumberTextControllerValidator;
    pinVisibility = false;
    pinTextControllerValidator = _pinTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileNumberFocusNode?.dispose();
    mobileNumberTextController?.dispose();

    pinFocusNode?.dispose();
    pinTextController?.dispose();
  }
}
