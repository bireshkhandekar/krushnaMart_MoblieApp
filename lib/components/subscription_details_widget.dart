import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'subscription_details_model.dart';
export 'subscription_details_model.dart';

class SubscriptionDetailsWidget extends StatefulWidget {
  const SubscriptionDetailsWidget({super.key});

  @override
  State<SubscriptionDetailsWidget> createState() =>
      _SubscriptionDetailsWidgetState();
}

class _SubscriptionDetailsWidgetState extends State<SubscriptionDetailsWidget> {
  late SubscriptionDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubscriptionDetailsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          height: 300.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ],
    );
  }
}
