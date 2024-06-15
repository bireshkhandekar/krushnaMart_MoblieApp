import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_cancell_orders_model.dart';
export 'empty_cancell_orders_model.dart';

class EmptyCancellOrdersWidget extends StatefulWidget {
  const EmptyCancellOrdersWidget({super.key});

  @override
  State<EmptyCancellOrdersWidget> createState() =>
      _EmptyCancellOrdersWidgetState();
}

class _EmptyCancellOrdersWidgetState extends State<EmptyCancellOrdersWidget> {
  late EmptyCancellOrdersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyCancellOrdersModel());
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Text(
            'No Cancelled Orders.',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ],
    );
  }
}
