import '/flutter_flow/flutter_flow_util.dart';
import 'register_page_widget.dart' show RegisterPageWidget;
import 'package:flutter/material.dart';

class RegisterPageModel extends FlutterFlowModel<RegisterPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your Name';
    }

    return null;
  }

  // State field(s) for mobileNumber widget.
  FocusNode? mobileNumberFocusNode;
  TextEditingController? mobileNumberController;
  String? Function(BuildContext, String?)? mobileNumberControllerValidator;
  String? _mobileNumberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your Moblie Number';
    }

    if (val.length < 10) {
      return 'Enter your 10 digit moblie number';
    }

    return null;
  }

  // State field(s) for flatno widget.
  FocusNode? flatnoFocusNode;
  TextEditingController? flatnoController;
  String? Function(BuildContext, String?)? flatnoControllerValidator;
  String? _flatnoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your flat no / name';
    }

    return null;
  }

  // State field(s) for lineNo widget.
  FocusNode? lineNoFocusNode;
  TextEditingController? lineNoController;
  String? Function(BuildContext, String?)? lineNoControllerValidator;
  // State field(s) for landMark widget.
  FocusNode? landMarkFocusNode;
  TextEditingController? landMarkController;
  String? Function(BuildContext, String?)? landMarkControllerValidator;
  String? _landMarkControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your Land Mark';
    }

    return null;
  }

  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  String? _cityControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your City';
    }

    return null;
  }

  // State field(s) for pinCode widget.
  FocusNode? pinCodeFocusNode;
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  String? _pinCodeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your Pin code';
    }

    return null;
  }

  // State field(s) for state widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateController;
  String? Function(BuildContext, String?)? stateControllerValidator;
  String? _stateControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your State';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nameControllerValidator = _nameControllerValidator;
    mobileNumberControllerValidator = _mobileNumberControllerValidator;
    flatnoControllerValidator = _flatnoControllerValidator;
    landMarkControllerValidator = _landMarkControllerValidator;
    cityControllerValidator = _cityControllerValidator;
    pinCodeControllerValidator = _pinCodeControllerValidator;
    stateControllerValidator = _stateControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    mobileNumberFocusNode?.dispose();
    mobileNumberController?.dispose();

    flatnoFocusNode?.dispose();
    flatnoController?.dispose();

    lineNoFocusNode?.dispose();
    lineNoController?.dispose();

    landMarkFocusNode?.dispose();
    landMarkController?.dispose();

    cityFocusNode?.dispose();
    cityController?.dispose();

    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();

    stateFocusNode?.dispose();
    stateController?.dispose();
  }
}
