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
  TextEditingController? mobileNumberController;
  String? Function(BuildContext, String?)? mobileNumberControllerValidator;
  String? _mobileNumberControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? pinController;
  late bool pinVisibility;
  String? Function(BuildContext, String?)? pinControllerValidator;
  String? _pinControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? conformpinController;
  late bool conformpinVisibility;
  String? Function(BuildContext, String?)? conformpinControllerValidator;
  String? _conformpinControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please conform 4 digit PIN';
    }

    if (val.length < 4) {
      return 'Please conform 4 digit PIN';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mobileNumberControllerValidator = _mobileNumberControllerValidator;
    pinVisibility = false;
    pinControllerValidator = _pinControllerValidator;
    conformpinVisibility = false;
    conformpinControllerValidator = _conformpinControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileNumberFocusNode?.dispose();
    mobileNumberController?.dispose();

    pinFocusNode?.dispose();
    pinController?.dispose();

    conformpinFocusNode?.dispose();
    conformpinController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
