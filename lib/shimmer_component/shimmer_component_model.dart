import '/components/homepageloading_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shimmer_component_widget.dart' show ShimmerComponentWidget;
import 'package:flutter/material.dart';

class ShimmerComponentModel extends FlutterFlowModel<ShimmerComponentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for homepageloading component.
  late HomepageloadingModel homepageloadingModel;

  @override
  void initState(BuildContext context) {
    homepageloadingModel = createModel(context, () => HomepageloadingModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    homepageloadingModel.dispose();
  }
}
