import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'subscribe_stop_details_model.dart';
export 'subscribe_stop_details_model.dart';

class SubscribeStopDetailsWidget extends StatefulWidget {
  const SubscribeStopDetailsWidget({
    super.key,
    required this.subid,
  });

  final int? subid;

  @override
  State<SubscribeStopDetailsWidget> createState() =>
      _SubscribeStopDetailsWidgetState();
}

class _SubscribeStopDetailsWidgetState
    extends State<SubscribeStopDetailsWidget> {
  late SubscribeStopDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubscribeStopDetailsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.0,
      height: _model.radioButtonValue == 'Pause subscription for few days ?'
          ? 230.0
          : 180.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(20.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: FlutterFlowRadioButton(
                      options: [
                        'Cancel subscription completely ?',
                        'Pause subscription for few days ?'
                      ].toList(),
                      onChanged: (val) => setState(() {}),
                      controller: _model.radioButtonValueController ??=
                          FormFieldController<String>(null),
                      optionHeight: 51.0,
                      optionWidth: 340.0,
                      textStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                              ),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.vertical,
                      radioButtonColor: FlutterFlowTheme.of(context).primary,
                      inactiveRadioButtonColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ),
                ],
              ),
            ),
            Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Visibility(
                visible: _model.radioButtonValue ==
                    'Pause subscription for few days ?',
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, -1.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          final datePicked1Date = await showDatePicker(
                            context: context,
                            initialDate: getCurrentTimestamp,
                            firstDate: (getCurrentTimestamp ?? DateTime(1900)),
                            lastDate: DateTime(2050),
                            builder: (context, child) {
                              return wrapInMaterialDatePickerTheme(
                                context,
                                child!,
                                headerBackgroundColor:
                                    FlutterFlowTheme.of(context).primary,
                                headerForegroundColor:
                                    FlutterFlowTheme.of(context).info,
                                headerTextStyle: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 32.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                pickerBackgroundColor:
                                    FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                pickerForegroundColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                selectedDateTimeBackgroundColor:
                                    FlutterFlowTheme.of(context).primary,
                                selectedDateTimeForegroundColor:
                                    FlutterFlowTheme.of(context).info,
                                actionButtonForegroundColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 24.0,
                              );
                            },
                          );

                          if (datePicked1Date != null) {
                            safeSetState(() {
                              _model.datePicked1 = DateTime(
                                datePicked1Date.year,
                                datePicked1Date.month,
                                datePicked1Date.day,
                              );
                            });
                          }
                          FFAppState().evarydaycalculetion = false;
                          setState(() {});
                        },
                        child: Container(
                          width: 116.0,
                          height: 32.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                dateTimeFormat(
                                  'd/M/y',
                                  _model.datePicked1,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                'Start Date',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_right_alt_sharp,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, -1.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          final datePicked2Date = await showDatePicker(
                            context: context,
                            initialDate: getCurrentTimestamp,
                            firstDate: (getCurrentTimestamp ?? DateTime(1900)),
                            lastDate: DateTime(2050),
                            builder: (context, child) {
                              return wrapInMaterialDatePickerTheme(
                                context,
                                child!,
                                headerBackgroundColor:
                                    FlutterFlowTheme.of(context).primary,
                                headerForegroundColor:
                                    FlutterFlowTheme.of(context).info,
                                headerTextStyle: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 32.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                pickerBackgroundColor:
                                    FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                pickerForegroundColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                selectedDateTimeBackgroundColor:
                                    FlutterFlowTheme.of(context).primary,
                                selectedDateTimeForegroundColor:
                                    FlutterFlowTheme.of(context).info,
                                actionButtonForegroundColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                iconSize: 24.0,
                              );
                            },
                          );

                          if (datePicked2Date != null) {
                            safeSetState(() {
                              _model.datePicked2 = DateTime(
                                datePicked2Date.year,
                                datePicked2Date.month,
                                datePicked2Date.day,
                              );
                            });
                          }
                          FFAppState().evarydaycalculetion = false;
                          setState(() {});
                        },
                        child: Container(
                          width: 116.0,
                          height: 32.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                dateTimeFormat(
                                  'd/M/y',
                                  _model.datePicked2,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                'End Date',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        if (_model.radioButtonValue ==
                            'Cancel subscription completely ?') {
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              var shouldSetState = false;
                              if (currentAuthenticationToken != null &&
                                  currentAuthenticationToken != '') {
                                _model.apiResulta5j = await KMartAPIsGroup
                                    .tokenValidetionCall
                                    .call(
                                  token: currentAuthenticationToken,
                                );
                                shouldSetState = true;
                                if (!(_model.apiResulta5j?.succeeded ?? true)) {
                                  _model.apiResultrefreshtoken =
                                      await KMartAPIsGroup.refreshTokenCall
                                          .call(
                                    refreshToken: currentAuthRefreshToken,
                                  );
                                  shouldSetState = true;
                                  if ((_model
                                          .apiResultrefreshtoken?.succeeded ??
                                      true)) {
                                    authManager.updateAuthUserData(
                                      authenticationToken: getJsonField(
                                        (_model.apiResultrefreshtoken
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.data.access_token''',
                                      ).toString(),
                                      refreshToken: currentAuthRefreshToken,
                                      authUid: currentUserUid,
                                      userData: UserStruct(
                                        id: currentUserData?.id,
                                        userName: currentUserData?.userName,
                                        moblieNumber:
                                            currentUserData?.moblieNumber,
                                        shippingAddress:
                                            currentUserData?.shippingAddress,
                                        houseNo: currentUserData?.houseNo,
                                        lineNo: currentUserData?.lineNo,
                                        landMark: currentUserData?.landMark,
                                        city: currentUserData?.city,
                                        state: currentUserData?.state,
                                        pincode: currentUserData?.pincode,
                                      ),
                                    );
                                  } else {
                                    context.pushNamed('LoginPage');

                                    if (shouldSetState) setState(() {});
                                    return;
                                  }
                                }
                              }
                              _model.subdisable =
                                  await KMartAPIsGroup.subscribeUpdateCall.call(
                                subid: widget.subid,
                                token: currentAuthenticationToken,
                              );
                              shouldSetState = true;
                              if ((_model.subdisable?.succeeded ?? true)) {
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Subscription cancelled successfully',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                              if (shouldSetState) setState(() {});
                            },
                            child: Text(
                              'OK',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          );
                        } else if (_model.radioButtonValue ==
                            'Pause subscription for few days ?') {
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              var shouldSetState = false;
                              if (_model.formKey.currentState == null ||
                                  !_model.formKey.currentState!.validate()) {
                                return;
                              }
                              if (_model.datePicked1 == null) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('warning'),
                                      content: const Text('Plz select start date.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                return;
                              }
                              if (_model.datePicked2 == null) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: const Text('warning'),
                                      content: const Text('Plz select end date.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                return;
                              }
                              if (currentAuthenticationToken != null &&
                                  currentAuthenticationToken != '') {
                                _model.pauseapiResulta5jCopy =
                                    await KMartAPIsGroup.tokenValidetionCall
                                        .call(
                                  token: currentAuthenticationToken,
                                );
                                shouldSetState = true;
                                if (!(_model.pauseapiResulta5jCopy?.succeeded ??
                                    true)) {
                                  _model.pauseapiResultrefreshtoken =
                                      await KMartAPIsGroup.refreshTokenCall
                                          .call(
                                    refreshToken: currentAuthRefreshToken,
                                  );
                                  shouldSetState = true;
                                  if ((_model.pauseapiResultrefreshtoken
                                          ?.succeeded ??
                                      true)) {
                                    authManager.updateAuthUserData(
                                      authenticationToken: getJsonField(
                                        (_model.pauseapiResultrefreshtoken
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.data.access_token''',
                                      ).toString(),
                                      refreshToken: currentAuthRefreshToken,
                                      authUid: currentUserUid,
                                      userData: UserStruct(
                                        id: currentUserData?.id,
                                        userName: currentUserData?.userName,
                                        moblieNumber:
                                            currentUserData?.moblieNumber,
                                        shippingAddress:
                                            currentUserData?.shippingAddress,
                                        houseNo: currentUserData?.houseNo,
                                        lineNo: currentUserData?.lineNo,
                                        landMark: currentUserData?.landMark,
                                        city: currentUserData?.city,
                                        state: currentUserData?.state,
                                        pincode: currentUserData?.pincode,
                                      ),
                                    );
                                  } else {
                                    context.pushNamed('LoginPage');

                                    if (shouldSetState) setState(() {});
                                    return;
                                  }
                                }
                              }
                              _model.pauseapiresult = await KMartAPIsGroup
                                  .subscriptionPauseApiCall
                                  .call(
                                subId: widget.subid,
                                startDate: dateTimeFormat(
                                              'y-M-d',
                                              _model.datePicked1,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ) !=
                                            ''
                                    ? dateTimeFormat(
                                        'y-M-d',
                                        _model.datePicked1,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )
                                    : dateTimeFormat(
                                        'y-M-d',
                                        getCurrentTimestamp,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                endDate: dateTimeFormat(
                                              'y-M-d',
                                              _model.datePicked2,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ) !=
                                            ''
                                    ? dateTimeFormat(
                                        'y-M-d',
                                        _model.datePicked2,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )
                                    : dateTimeFormat(
                                        'y-M-d',
                                        getCurrentTimestamp,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                token: currentAuthenticationToken,
                              );
                              shouldSetState = true;
                              if ((_model.pauseapiresult?.succeeded ?? true)) {
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      getJsonField(
                                        (_model.pauseapiresult?.jsonBody ?? ''),
                                        r'''$.message''',
                                      ).toString(),
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                              if (shouldSetState) setState(() {});
                            },
                            child: Text(
                              'OK',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          );
                        } else {
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'OK',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
