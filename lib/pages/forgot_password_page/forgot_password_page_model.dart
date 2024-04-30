import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_password_page_widget.dart' show ForgotPasswordPageWidget;
import 'package:flutter/material.dart';

class ForgotPasswordPageModel
    extends FlutterFlowModel<ForgotPasswordPageWidget> {
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
      return 'Please Enter your moblie number';
    }

    if (val.length < 10) {
      return 'Enter your 10 digit moblie number';
    }

    return null;
  }

  // State field(s) for otp widget.
  FocusNode? otpFocusNode;
  TextEditingController? otpTextController;
  String? Function(BuildContext, String?)? otpTextControllerValidator;
  String? _otpTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter OTP ';
    }

    return null;
  }

  // State field(s) for setpin widget.
  FocusNode? setpinFocusNode;
  TextEditingController? setpinTextController;
  late bool setpinVisibility;
  String? Function(BuildContext, String?)? setpinTextControllerValidator;
  String? _setpinTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please set your 4 digit  PIN';
    }

    if (val.length < 4) {
      return 'Please set your 4 digit  PIN';
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
      return 'Please conform your 4 digit  PIN';
    }

    if (val.length < 4) {
      return 'Please conform your 4 digit  PIN';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    mobileNumberTextControllerValidator = _mobileNumberTextControllerValidator;
    otpTextControllerValidator = _otpTextControllerValidator;
    setpinVisibility = false;
    setpinTextControllerValidator = _setpinTextControllerValidator;
    conformpinVisibility = false;
    conformpinTextControllerValidator = _conformpinTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileNumberFocusNode?.dispose();
    mobileNumberTextController?.dispose();

    otpFocusNode?.dispose();
    otpTextController?.dispose();

    setpinFocusNode?.dispose();
    setpinTextController?.dispose();

    conformpinFocusNode?.dispose();
    conformpinTextController?.dispose();
  }
}
