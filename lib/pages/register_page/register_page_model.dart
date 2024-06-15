import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'register_page_widget.dart' show RegisterPageWidget;
import 'package:flutter/material.dart';

class RegisterPageModel extends FlutterFlowModel<RegisterPageWidget> {
  ///  Local state fields for this page.

  bool? pinMatch = true;

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
    if (val.length > 10) {
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

  // State field(s) for laneNo widget.
  FocusNode? laneNoFocusNode;
  TextEditingController? laneNoTextController;
  String? Function(BuildContext, String?)? laneNoTextControllerValidator;
  String? _laneNoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your lane no ';
    }

    return null;
  }

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

    if (val.length < 6) {
      return 'Enter 6 digit Pin Code';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (pincode)] action in pinCode widget.
  ApiCallResponse? apiResultf07;
  // State field(s) for pin widget.
  FocusNode? pinFocusNode;
  TextEditingController? pinTextController;
  late bool pinVisibility;
  String? Function(BuildContext, String?)? pinTextControllerValidator;
  String? _pinTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter pin';
    }

    if (val.length < 4) {
      return 'Enter 4 digit PIN';
    }
    if (val.length > 4) {
      return 'Enter 4 digit PIN';
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
      return 'Please enter conform pin';
    }

    if (val.length < 4) {
      return 'Enter 4 digit PIN';
    }
    if (val.length > 4) {
      return 'Enter 4 digit PIN';
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
    laneNoTextControllerValidator = _laneNoTextControllerValidator;
    landMarkTextControllerValidator = _landMarkTextControllerValidator;
    cityTextControllerValidator = _cityTextControllerValidator;
    pinCodeTextControllerValidator = _pinCodeTextControllerValidator;
    pinVisibility = false;
    pinTextControllerValidator = _pinTextControllerValidator;
    conformpinVisibility = false;
    conformpinTextControllerValidator = _conformpinTextControllerValidator;
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

    laneNoFocusNode?.dispose();
    laneNoTextController?.dispose();

    landMarkFocusNode?.dispose();
    landMarkTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    pinCodeFocusNode?.dispose();
    pinCodeTextController?.dispose();

    pinFocusNode?.dispose();
    pinTextController?.dispose();

    conformpinFocusNode?.dispose();
    conformpinTextController?.dispose();
  }
}
