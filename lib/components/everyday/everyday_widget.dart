import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'everyday_model.dart';
export 'everyday_model.dart';

class EverydayWidget extends StatefulWidget {
  const EverydayWidget({
    super.key,
    required this.itemPrice,
  });

  final double? itemPrice;

  @override
  State<EverydayWidget> createState() => _EverydayWidgetState();
}

class _EverydayWidgetState extends State<EverydayWidget> {
  late EverydayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EverydayModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      child: Form(
        key: _model.formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
          child: FutureBuilder<ApiCallResponse>(
            future: KMartAPIsGroup.getWalletBalanceCall.call(
              userId: currentUserData?.id,
              token: currentAuthenticationToken,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitCircle(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                  ),
                );
              }
              final columnGetWalletBalanceResponse = snapshot.data!;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                      child: Text(
                        'Every Day ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Divider(
                      thickness: 0.2,
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.0, -1.0),
                            child: Text(
                              'Wallet Balance : ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, -1.0),
                            child: Text(
                              '₹ ${getJsonField(
                                columnGetWalletBalanceResponse.jsonBody,
                                r'''$.data.wallet_balance''',
                              ).toString()}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Text(
                            'Select Dates :',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, -1.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        final datePicked1Date =
                                            await showDatePicker(
                                          context: context,
                                          initialDate:
                                              (functions.dailystartdate(
                                                      getCurrentTimestamp) ??
                                                  DateTime.now()),
                                          firstDate: (functions.dailystartdate(
                                                  getCurrentTimestamp) ??
                                              DateTime(1900)),
                                          lastDate: (functions.limitDateselect(
                                                  getCurrentTimestamp) ??
                                              DateTime(2050)),
                                          builder: (context, child) {
                                            return wrapInMaterialDatePickerTheme(
                                              context,
                                              child!,
                                              headerBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              headerForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              headerTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        fontSize: 32.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                              pickerBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              pickerForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              selectedDateTimeBackgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              selectedDateTimeForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              actionButtonForegroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
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
                                        FFAppState().evarydaycalculetion =
                                            false;
                                        setState(() {});
                                      },
                                      child: Container(
                                        width: 140.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              dateTimeFormat(
                                                'd/M/y',
                                                _model.datePicked1,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              'Start Date',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                              Icon(
                                Icons.arrow_right_alt,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 30.0,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, -1.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (_model.datePicked1 != null) {
                                          final datePicked2Date =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: (_model.datePicked1 ??
                                                DateTime.now()),
                                            firstDate: (_model.datePicked1 ??
                                                DateTime(1900)),
                                            lastDate:
                                                (functions.limitDateselect(
                                                        _model.datePicked1!) ??
                                                    DateTime(2050)),
                                            builder: (context, child) {
                                              return wrapInMaterialDatePickerTheme(
                                                context,
                                                child!,
                                                headerBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                headerForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                headerTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 32.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                pickerBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                pickerForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                selectedDateTimeBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                selectedDateTimeForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                actionButtonForegroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
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
                                          FFAppState().evarydaycalculetion =
                                              false;
                                          setState(() {});
                                        }
                                      },
                                      child: Container(
                                        width: 140.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              dateTimeFormat(
                                                'd/M/y',
                                                _model.datePicked2,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              'End Date',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.0, -1.0),
                            child: Text(
                              'Quantity :',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Container(
                                      width: 120.0,
                                      height: 45.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                      child: FlutterFlowCountController(
                                        decrementIconBuilder: (enabled) =>
                                            FaIcon(
                                          FontAwesomeIcons.minus,
                                          color: enabled
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .alternate,
                                          size: 24.0,
                                        ),
                                        incrementIconBuilder: (enabled) =>
                                            FaIcon(
                                          FontAwesomeIcons.plus,
                                          color: enabled
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .alternate,
                                          size: 24.0,
                                        ),
                                        countBuilder: (count) => Text(
                                          count.toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        count: _model.countControllerValue ??=
                                            1,
                                        updateCount: (count) async {
                                          setState(() => _model
                                              .countControllerValue = count);
                                          FFAppState().evarydaycalculetion =
                                              false;
                                          setState(() {});
                                        },
                                        stepSize: 1,
                                        minimum: 1,
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                12.0, 4.0, 12.0, 4.0),
                                      ),
                                    ),
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    if (currentAuthenticationToken != null &&
                                        currentAuthenticationToken != '') {
                                      _model.apiResulta5j = await KMartAPIsGroup
                                          .tokenValidetionCall
                                          .call(
                                        token: currentAuthenticationToken,
                                      );

                                      if (!(_model.apiResulta5j?.succeeded ??
                                          true)) {
                                        _model.apiResultrefreshtoken =
                                            await KMartAPIsGroup
                                                .refreshTokenCall
                                                .call(
                                          refreshToken: currentAuthRefreshToken,
                                        );

                                        if ((_model.apiResultrefreshtoken
                                                ?.succeeded ??
                                            true)) {
                                          authManager.updateAuthUserData(
                                            authenticationToken: getJsonField(
                                              (_model.apiResultrefreshtoken
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.data.access_token''',
                                            ).toString(),
                                            refreshToken:
                                                currentAuthRefreshToken,
                                            authUid: currentUserUid,
                                            userData: UserStruct(
                                              id: currentUserData?.id,
                                              userName:
                                                  currentUserData?.userName,
                                              moblieNumber:
                                                  currentUserData?.moblieNumber,
                                              shippingAddress: currentUserData
                                                  ?.shippingAddress,
                                              houseNo: currentUserData?.houseNo,
                                              lineNo: currentUserData?.lineNo,
                                              landMark:
                                                  currentUserData?.landMark,
                                              city: currentUserData?.city,
                                              state: currentUserData?.state,
                                              pincode: currentUserData?.pincode,
                                            ),
                                          );
                                        } else {
                                          context.pushNamed(
                                            'LoginPage',
                                            queryParameters: {
                                              'pageName': serializeParam(
                                                'profilePage',
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );
                                        }
                                      }
                                    }
                                    if (_model.formKey.currentState == null ||
                                        !_model.formKey.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    if (_model.datePicked1 == null) {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text('Warning'),
                                            content:
                                                const Text('Plz select start date'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
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
                                            title: const Text('Warning'),
                                            content:
                                                const Text('Plz select end date'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: const Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                      return;
                                    }
                                    _model.daysresult =
                                        await actions.convertTwodatesToDays(
                                      context,
                                      _model.datePicked1!,
                                      _model.datePicked2!,
                                      _model.countControllerValue!,
                                    );
                                    FFAppState().evarydaycalculetion = true;
                                    setState(() {});

                                    setState(() {});
                                  },
                                  text: 'Calculate',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  showLoadingIndicator: false,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (FFAppState().evarydaycalculetion == true)
                      StyledDivider(
                        thickness: 0.2,
                        color: FlutterFlowTheme.of(context).primaryText,
                        lineStyle: DividerLineStyle.dashed,
                      ),
                    if (FFAppState().evarydaycalculetion == true)
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Text(
                                    'Wallet Balance : ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Text(
                                    '₹ ${valueOrDefault<String>(
                                      getJsonField(
                                        columnGetWalletBalanceResponse.jsonBody,
                                        r'''$.data.wallet_balance''',
                                      )?.toString(),
                                      '- - -',
                                    )}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Text(
                                    'Order Amount : ${valueOrDefault<String>(
                                      _model.daysresult?.toString(),
                                      '- - -',
                                    )} x ${valueOrDefault<String>(
                                      widget.itemPrice?.toString(),
                                      '- - -',
                                    )}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Text(
                                    '- ₹ ${valueOrDefault<String>(
                                      functions
                                          .evarydayqtyintoprice(
                                              _model.daysresult,
                                              widget.itemPrice)
                                          .toString(),
                                      '- - -',
                                    )}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Text(
                                    'Remaining Wallet Balance : ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Text(
                                    ' ₹ ${valueOrDefault<String>(
                                      functions
                                          .evarydayTotalAmount(
                                              getJsonField(
                                                columnGetWalletBalanceResponse
                                                    .jsonBody,
                                                r'''$.data.wallet_balance''',
                                              ),
                                              functions.evarydayqtyintoprice(
                                                  _model.daysresult,
                                                  widget.itemPrice))
                                          .toString(),
                                      '- - -',
                                    )}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    if (FFAppState().evarydaycalculetion == true)
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Builder(
                              builder: (context) {
                                if (functions.evarydayTotalAmountcheck(
                                        functions.evarydayTotalAmount(
                                            getJsonField(
                                              columnGetWalletBalanceResponse
                                                  .jsonBody,
                                              r'''$.data.wallet_balance''',
                                            ),
                                            functions.evarydayqtyintoprice(
                                                _model.daysresult,
                                                widget.itemPrice))) ==
                                    false) {
                                  return Visibility(
                                    visible: (FFAppState()
                                                .evarydaycalculetion ==
                                            true) &&
                                        (functions.evarydayTotalAmountcheck(
                                                functions.evarydayTotalAmount(
                                                    getJsonField(
                                                      columnGetWalletBalanceResponse
                                                          .jsonBody,
                                                      r'''$.data.wallet_balance''',
                                                    ),
                                                    functions
                                                        .evarydayqtyintoprice(
                                                            _model.daysresult,
                                                            widget
                                                                .itemPrice))) ==
                                            false),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 20.0, 8.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          FFAppState().startDate =
                                              dateTimeFormat(
                                            'd/M/y',
                                            _model.datePicked1,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          );
                                          FFAppState().endDate = dateTimeFormat(
                                            'd/M/y',
                                            _model.datePicked2,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          );
                                          FFAppState().EvarydayQty =
                                              _model.daysresult!;
                                          FFAppState().EvarydayAmount =
                                              functions.evarydayqtyintoprice(
                                                  _model.daysresult,
                                                  widget.itemPrice)!;
                                          FFAppState().everydayshow = true;
                                          setState(() {});
                                          Navigator.pop(context,
                                              _model.countControllerValue);
                                          FFAppState().evarydaycalculetion =
                                              false;
                                          setState(() {});
                                        },
                                        text: 'Submit',
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  );
                                } else {
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 8.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 8.0, 0.0),
                                              child: Icon(
                                                Icons.warning_amber_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                size: 28.0,
                                              ),
                                            ),
                                            Text(
                                              'Insufficient Balance Plz Add Balance to Wallet.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('WalletPage');

                                            FFAppState().evarydaycalculetion =
                                                false;
                                            setState(() {});
                                          },
                                          text: 'Ok',
                                          options: FFButtonOptions(
                                            height: 36.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 5.0)),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
