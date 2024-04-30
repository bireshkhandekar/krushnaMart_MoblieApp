import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'register_page_widget.dart' show RegisterPageWidget;
import 'package:flutter/material.dart';

class RegisterPageModel extends FlutterFlowModel<RegisterPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your Name';
    }

    return null;
  }

  // State field(s) for mobileNumber widget.
  FocusNode? mobileNumberFocusNode;
  TextEditingController? mobileNumberTextController;
  String? Function(BuildContext, String?)? mobileNumberTextControllerValidator;
  String? _mobileNumberTextControllerValidator(
      BuildContext context, String? val) {
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
  TextEditingController? flatnoTextController;
  String? Function(BuildContext, String?)? flatnoTextControllerValidator;
  String? _flatnoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your flat no / name';
    }

    return null;
  }

  // State field(s) for lineNo widget.
  FocusNode? lineNoFocusNode;
  TextEditingController? lineNoTextController;
  String? Function(BuildContext, String?)? lineNoTextControllerValidator;
  // State field(s) for landMark widget.
  FocusNode? landMarkFocusNode;
  TextEditingController? landMarkTextController;
  String? Function(BuildContext, String?)? landMarkTextControllerValidator;
  String? _landMarkTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your Land Mark';
    }

    return null;
  }

  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  String? _cityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your City';
    }

    return null;
  }

  // State field(s) for pinCode widget.
  FocusNode? pinCodeFocusNode;
  TextEditingController? pinCodeTextController;
  String? Function(BuildContext, String?)? pinCodeTextControllerValidator;
  String? _pinCodeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your Pin code';
    }

    return null;
  }

  // State field(s) for state widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateTextController;
  String? Function(BuildContext, String?)? stateTextControllerValidator;
  String? _stateTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your State';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (User Register API)] action in register widget.
  ApiCallResponse? registerApiResponce;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    mobileNumberTextControllerValidator = _mobileNumberTextControllerValidator;
    flatnoTextControllerValidator = _flatnoTextControllerValidator;
    landMarkTextControllerValidator = _landMarkTextControllerValidator;
    cityTextControllerValidator = _cityTextControllerValidator;
    pinCodeTextControllerValidator = _pinCodeTextControllerValidator;
    stateTextControllerValidator = _stateTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    mobileNumberFocusNode?.dispose();
    mobileNumberTextController?.dispose();

    flatnoFocusNode?.dispose();
    flatnoTextController?.dispose();

    lineNoFocusNode?.dispose();
    lineNoTextController?.dispose();

    landMarkFocusNode?.dispose();
    landMarkTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    pinCodeFocusNode?.dispose();
    pinCodeTextController?.dispose();

    stateFocusNode?.dispose();
    stateTextController?.dispose();
  }
}
