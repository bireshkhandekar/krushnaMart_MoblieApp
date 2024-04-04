import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'custom_dates_model.dart';
export 'custom_dates_model.dart';

class CustomDatesWidget extends StatefulWidget {
  const CustomDatesWidget({super.key});

  @override
  State<CustomDatesWidget> createState() => _CustomDatesWidgetState();
}

class _CustomDatesWidgetState extends State<CustomDatesWidget> {
  late CustomDatesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomDatesModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.0,
      height: 300.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
    );
  }
}
