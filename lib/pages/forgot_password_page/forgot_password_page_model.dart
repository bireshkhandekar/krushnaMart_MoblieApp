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
  TextEditingController? mobileNumberController;
  String? Function(BuildContext, String?)? mobileNumberControllerValidator;
  String? _mobileNumberControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? otpController;
  String? Function(BuildContext, String?)? otpControllerValidator;
  String? _otpControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please Enter OTP ';
    }

    return null;
  }

  // State field(s) for setpin widget.
  FocusNode? setpinFocusNode;
  TextEditingController? setpinController;
  late bool setpinVisibility;
  String? Function(BuildContext, String?)? setpinControllerValidator;
  String? _setpinControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? conformpinController;
  late bool conformpinVisibility;
  String? Function(BuildContext, String?)? conformpinControllerValidator;
  String? _conformpinControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please conform your 4 digit  PIN';
    }

    if (val.length < 4) {
      return 'Please conform your 4 digit  PIN';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mobileNumberControllerValidator = _mobileNumberControllerValidator;
    otpControllerValidator = _otpControllerValidator;
    setpinVisibility = false;
    setpinControllerValidator = _setpinControllerValidator;
    conformpinVisibility = false;
    conformpinControllerValidator = _conformpinControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileNumberFocusNode?.dispose();
    mobileNumberController?.dispose();

    otpFocusNode?.dispose();
    otpController?.dispose();

    setpinFocusNode?.dispose();
    setpinController?.dispose();

    conformpinFocusNode?.dispose();
    conformpinController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
