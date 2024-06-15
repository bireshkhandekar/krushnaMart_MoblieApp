import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'customdateselection_model.dart';
export 'customdateselection_model.dart';

class CustomdateselectionWidget extends StatefulWidget {
  const CustomdateselectionWidget({
    super.key,
    required this.parameter1,
    required this.index,
    required this.qty,
  });

  final String? parameter1;
  final int? index;
  final int? qty;

  @override
  State<CustomdateselectionWidget> createState() =>
      _CustomdateselectionWidgetState();
}

class _CustomdateselectionWidgetState extends State<CustomdateselectionWidget> {
  late CustomdateselectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomdateselectionModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Text(
              valueOrDefault<String>(
                widget.parameter1,
                '10/10/2024',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          Container(
            width: 150.0,
            height: 45.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(8.0),
              shape: BoxShape.rectangle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
                width: 2.0,
              ),
            ),
            child: FlutterFlowCountController(
              decrementIconBuilder: (enabled) => FaIcon(
                FontAwesomeIcons.minus,
                color: enabled
                    ? FlutterFlowTheme.of(context).secondaryText
                    : FlutterFlowTheme.of(context).alternate,
                size: 20.0,
              ),
              incrementIconBuilder: (enabled) => FaIcon(
                FontAwesomeIcons.plus,
                color: enabled
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).alternate,
                size: 20.0,
              ),
              countBuilder: (count) => Text(
                count.toString(),
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              count: _model.countControllerValue ??= widget.qty!,
              updateCount: (count) async {
                setState(() => _model.countControllerValue = count);
                FFAppState().customCalculate = false;
                FFAppState().updateSelectedqtyAtIndex(
                  widget.index!,
                  (_) => _model.countControllerValue!,
                );
                setState(() {});
                if (_model.countControllerValue == 0) {
                  FFAppState().removeAtIndexFromCustomdatesjson(widget.index!);
                  setState(() {});
                }
              },
              stepSize: 1,
              minimum: 0,
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().removeAtIndexFromCustomdatesjson(widget.index!);
                FFAppState().customCalculate = false;
                setState(() {});
              },
              child: Icon(
                Icons.delete_outline,
                color: FlutterFlowTheme.of(context).error,
                size: 24.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
