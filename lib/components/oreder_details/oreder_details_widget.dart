import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'oreder_details_model.dart';
export 'oreder_details_model.dart';

class OrederDetailsWidget extends StatefulWidget {
  const OrederDetailsWidget({super.key});

  @override
  State<OrederDetailsWidget> createState() => _OrederDetailsWidgetState();
}

class _OrederDetailsWidgetState extends State<OrederDetailsWidget> {
  late OrederDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrederDetailsModel());
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
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
          ),
        ),
      ],
    );
  }
}
