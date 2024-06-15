import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_page_widget.dart' show ProfilePageWidget;
import 'package:flutter/material.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (token validetion)] action in ProfilePage widget.
  ApiCallResponse? apiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in ProfilePage widget.
  ApiCallResponse? apiResultrefreshtoken;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for moblieno widget.
  FocusNode? moblienoFocusNode;
  TextEditingController? moblienoTextController;
  String? Function(BuildContext, String?)? moblienoTextControllerValidator;
  String? _moblienoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for houseno widget.
  FocusNode? housenoFocusNode;
  TextEditingController? housenoTextController;
  String? Function(BuildContext, String?)? housenoTextControllerValidator;
  String? _housenoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for laneno widget.
  FocusNode? lanenoFocusNode;
  TextEditingController? lanenoTextController;
  String? Function(BuildContext, String?)? lanenoTextControllerValidator;
  String? _lanenoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for landmark widget.
  FocusNode? landmarkFocusNode;
  TextEditingController? landmarkTextController;
  String? Function(BuildContext, String?)? landmarkTextControllerValidator;
  String? _landmarkTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  String? _cityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for state widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateTextController;
  String? Function(BuildContext, String?)? stateTextControllerValidator;
  String? _stateTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for pincode widget.
  FocusNode? pincodeFocusNode;
  TextEditingController? pincodeTextController;
  String? Function(BuildContext, String?)? pincodeTextControllerValidator;
  String? _pincodeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 6) {
      return 'Enter 6 digit pincode ';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Update user profile )] action in Button widget.
  ApiCallResponse? apiResultuserupdate;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    moblienoTextControllerValidator = _moblienoTextControllerValidator;
    housenoTextControllerValidator = _housenoTextControllerValidator;
    lanenoTextControllerValidator = _lanenoTextControllerValidator;
    landmarkTextControllerValidator = _landmarkTextControllerValidator;
    cityTextControllerValidator = _cityTextControllerValidator;
    stateTextControllerValidator = _stateTextControllerValidator;
    pincodeTextControllerValidator = _pincodeTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    moblienoFocusNode?.dispose();
    moblienoTextController?.dispose();

    housenoFocusNode?.dispose();
    housenoTextController?.dispose();

    lanenoFocusNode?.dispose();
    lanenoTextController?.dispose();

    landmarkFocusNode?.dispose();
    landmarkTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    stateFocusNode?.dispose();
    stateTextController?.dispose();

    pincodeFocusNode?.dispose();
    pincodeTextController?.dispose();
  }
}
