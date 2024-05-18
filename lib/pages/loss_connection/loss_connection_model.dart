import '/flutter_flow/flutter_flow_util.dart';
import 'loss_connection_widget.dart' show LossConnectionWidget;
import 'package:flutter/material.dart';

class LossConnectionModel extends FlutterFlowModel<LossConnectionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - checkInternetConnection] action in IconButton widget.
  bool? resultconnection;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
