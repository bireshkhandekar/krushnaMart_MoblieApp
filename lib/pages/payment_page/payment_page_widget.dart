import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/components/order_failed/order_failed_widget.dart';
import '/components/order_success/order_success_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'payment_page_model.dart';
export 'payment_page_model.dart';

class PaymentPageWidget extends StatefulWidget {
  const PaymentPageWidget({super.key});

  @override
  State<PaymentPageWidget> createState() => _PaymentPageWidgetState();
}

class _PaymentPageWidgetState extends State<PaymentPageWidget> {
  late PaymentPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Payment',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 54.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        border: Border.all(
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 7,
                              child: Text(
                                'Total Amount :',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: FutureBuilder<List<GetTotalpriceRow>>(
                                future: SQLiteManager.instance.getTotalprice(),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: SpinKitCircle(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 50.0,
                                        ),
                                      ),
                                    );
                                  }
                                  final textGetTotalpriceRowList =
                                      snapshot.data!;
                                  return Text(
                                    'Rs. ${valueOrDefault<String>(
                                      textGetTotalpriceRowList.first.totalPrice
                                          ?.toString(),
                                      '- - -',
                                    )}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                        ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Wallet',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Icon(
                                        Icons.account_balance_wallet,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 50.0,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 6,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Using Wallet ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child:
                                                FutureBuilder<ApiCallResponse>(
                                              future: KMartAPIsGroup
                                                  .getWalletBalanceCall
                                                  .call(
                                                userId: currentUserData?.id,
                                                token:
                                                    currentAuthenticationToken,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 22.0,
                                                      height: 22.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                final textGetWalletBalanceResponse =
                                                    snapshot.data!;
                                                return Text(
                                                  valueOrDefault<String>(
                                                    'Rs ${valueOrDefault<String>(
                                                      getJsonField(
                                                        textGetWalletBalanceResponse
                                                            .jsonBody,
                                                        r'''$.data.wallet_balance''',
                                                      )?.toString(),
                                                      '- - -',
                                                    )}',
                                                    '000',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                );
                                              },
                                            ),
                                          ),
                                          Text(
                                            'Available Balance ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                        ),
                                        child: Checkbox(
                                          value: _model.checkboxValue1 ??=
                                              false,
                                          onChanged: ((_model.checkboxValue2 ==
                                                      true) ||
                                                  (_model.checkboxValue3 ==
                                                      true))
                                              ? null
                                              : (newValue) async {
                                                  setState(() =>
                                                      _model.checkboxValue1 =
                                                          newValue!);
                                                },
                                          side: BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          checkColor: ((_model.checkboxValue2 ==
                                                      true) ||
                                                  (_model.checkboxValue3 ==
                                                      true))
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .info,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'UPI',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.payments_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 40.0,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 6,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Online',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Text(
                                              '( UPI / Card / More )',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                        ),
                                        child: Checkbox(
                                          value: _model.checkboxValue2 ??=
                                              false,
                                          onChanged: ((_model.checkboxValue1 ==
                                                      true) ||
                                                  (_model.checkboxValue3 ==
                                                      true))
                                              ? null
                                              : (newValue) async {
                                                  setState(() =>
                                                      _model.checkboxValue2 =
                                                          newValue!);
                                                },
                                          side: BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          checkColor: ((_model.checkboxValue1 ==
                                                      true) ||
                                                  (_model.checkboxValue3 ==
                                                      true))
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .info,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Cash On Delivery',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.payments_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 40.0,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 6,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                        ),
                                        child: Checkbox(
                                          value: _model.checkboxValue3 ??=
                                              false,
                                          onChanged: ((_model.checkboxValue1 ==
                                                      true) ||
                                                  (_model.checkboxValue2 ==
                                                      true))
                                              ? null
                                              : (newValue) async {
                                                  setState(() =>
                                                      _model.checkboxValue3 =
                                                          newValue!);
                                                },
                                          side: BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          checkColor: ((_model.checkboxValue1 ==
                                                      true) ||
                                                  (_model.checkboxValue2 ==
                                                      true))
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .info,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (_model.checkboxValue1 == true)
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Builder(
                      builder: (context) => Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 16.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            var shouldSetState = false;
                            if (currentAuthenticationToken != null &&
                                currentAuthenticationToken != '') {
                              _model.walletapiResulta5j =
                                  await KMartAPIsGroup.tokenValidetionCall.call(
                                token: currentAuthenticationToken,
                              );

                              shouldSetState = true;
                              if (!(_model.walletapiResulta5j?.succeeded ??
                                  true)) {
                                _model.walletapiResultrefreshtoken =
                                    await KMartAPIsGroup.refreshTokenCall.call(
                                  refreshToken: currentAuthRefreshToken,
                                );

                                shouldSetState = true;
                                if ((_model.walletapiResultrefreshtoken
                                        ?.succeeded ??
                                    true)) {
                                  authManager.updateAuthUserData(
                                    authenticationToken: getJsonField(
                                      (_model.walletapiResultrefreshtoken
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
                            } else {
                              context.pushNamed('LoginPage');

                              if (shouldSetState) setState(() {});
                              return;
                            }

                            _model.allitems =
                                await SQLiteManager.instance.allget();
                            shouldSetState = true;
                            _model.totalprice =
                                await SQLiteManager.instance.getTotalprice();
                            shouldSetState = true;
                            _model.getWalletBalence =
                                await KMartAPIsGroup.getWalletBalanceCall.call(
                              userId: currentUserData?.id,
                              token: currentAuthenticationToken,
                            );

                            shouldSetState = true;
                            _model.walletbalencecheck =
                                await actions.walletBalenceCheck(
                              _model.totalprice!.first.totalPrice!,
                              getJsonField(
                                (_model.getWalletBalence?.jsonBody ?? ''),
                                r'''$.data.wallet_balance''',
                              ),
                            );
                            shouldSetState = true;
                            if (_model.walletbalencecheck == true) {
                              _model.orderresponce =
                                  await KMartAPIsGroup.orderApiCall.call(
                                customerId: currentUserData?.id,
                                customerName: currentUserData?.userName,
                                mobileNumber: currentUserData?.moblieNumber,
                                shippingAddress:
                                    currentUserData?.shippingAddress,
                                orderTotal:
                                    _model.totalprice?.first.totalPrice,
                                paymentMode: 'wallet',
                                paymentStatus: 'completed',
                                orderType: 'regular',
                                orderItemsJson: functions.convertToitem(
                                    _model.allitems!
                                        .map((e) => e.itemid)
                                        .toList(),
                                    _model.allitems!
                                        .map((e) => e.productName)
                                        .toList(),
                                    _model.allitems!
                                        .map((e) => e.price)
                                        .toList(),
                                    _model.allitems!
                                        .map((e) => e.quantity)
                                        .toList()),
                                token: currentAuthenticationToken,
                              );

                              shouldSetState = true;
                              if ((_model.orderresponce?.succeeded ?? true)) {
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: const AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: SizedBox(
                                          height: 340.0,
                                          width: 300.0,
                                          child: OrderSuccessWidget(
                                            orderId: getJsonField(
                                              (_model.orderresponce?.jsonBody ??
                                                  ''),
                                              r'''$.data.order_id''',
                                            ).toString(),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));

                                context.goNamed('ProductsPage');

                                await SQLiteManager.instance.deleteAll();
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: const AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: const SizedBox(
                                          height: 300.0,
                                          width: 300.0,
                                          child: OrderFailedWidget(),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              }
                            } else {
                              var confirmDialogResponse =
                                  await showDialog<bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            content: const Text(
                                                'Insufficient Balance Please add the Amount in your Wallet.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: const Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, true),
                                                child: const Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ??
                                      false;
                              if (confirmDialogResponse) {
                                context.pushNamed('WalletPage');
                              }
                            }

                            if (shouldSetState) setState(() {});
                          },
                          text: 'PLACE ORDER',
                          options: FFButtonOptions(
                            width: double.infinity,
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
                      ),
                    ),
                  ),
                if (_model.checkboxValue2 == true)
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Builder(
                      builder: (context) => Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 16.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            var shouldSetState = false;
                            if (currentAuthenticationToken != null &&
                                currentAuthenticationToken != '') {
                              _model.onlineapiResulta5j =
                                  await KMartAPIsGroup.tokenValidetionCall.call(
                                token: currentAuthenticationToken,
                              );

                              shouldSetState = true;
                              if (!(_model.onlineapiResulta5j?.succeeded ??
                                  true)) {
                                _model.onlineapiResultrefreshtoken =
                                    await KMartAPIsGroup.refreshTokenCall.call(
                                  refreshToken: currentAuthRefreshToken,
                                );

                                shouldSetState = true;
                                if ((_model.onlineapiResultrefreshtoken
                                        ?.succeeded ??
                                    true)) {
                                  authManager.updateAuthUserData(
                                    authenticationToken: getJsonField(
                                      (_model.onlineapiResultrefreshtoken
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
                            } else {
                              context.pushNamed('LoginPage');

                              if (shouldSetState) setState(() {});
                              return;
                            }

                            _model.allitemsonline =
                                await SQLiteManager.instance.allget();
                            shouldSetState = true;
                            _model.totalpriceonline =
                                await SQLiteManager.instance.getTotalprice();
                            shouldSetState = true;
                            _model.onlinePaymentResult =
                                await actions.razorpayaction(
                              context,
                              _model.totalpriceonline!.first.totalPrice!,
                              'कृष्णा मार्ट ',
                              'Regular Order Place.',
                              currentUserData!.moblieNumber,
                            );
                            shouldSetState = true;
                            if (functions.paymentcondition(getJsonField(
                              _model.onlinePaymentResult,
                              r'''$.status''',
                            ).toString())) {
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
                                    context.pushNamed(
                                      'LoginPage',
                                      queryParameters: {
                                        'pageName': serializeParam(
                                          'profilePage',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );

                                    if (shouldSetState) setState(() {});
                                    return;
                                  }
                                }
                              }
                              _model.orderresponceonline =
                                  await KMartAPIsGroup.orderApiOnlineCall.call(
                                customerId: currentUserData?.id,
                                customerName: currentUserData?.userName,
                                mobileNumber: currentUserData?.moblieNumber,
                                orderTotal:
                                    _model.totalpriceonline?.first.totalPrice,
                                shippingAddress:
                                    currentUserData?.shippingAddress,
                                paymentMode: 'online',
                                paymentStatus: 'completed',
                                orderType: 'regular',
                                orderItemsJson: functions.convertToitem(
                                    _model.allitemsonline!
                                        .map((e) => e.itemid)
                                        .toList(),
                                    _model.allitemsonline!
                                        .map((e) => e.productName)
                                        .toList(),
                                    _model.allitemsonline!
                                        .map((e) => e.price)
                                        .toList(),
                                    _model.allitemsonline!
                                        .map((e) => e.quantity)
                                        .toList()),
                                transactionId: getJsonField(
                                  _model.onlinePaymentResult,
                                  r'''$.paymentId''',
                                ).toString(),
                                token: currentAuthenticationToken,
                              );

                              shouldSetState = true;
                              if ((_model.orderresponceonline?.succeeded ??
                                  true)) {
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: const AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: SizedBox(
                                          height: 340.0,
                                          width: 300.0,
                                          child: OrderSuccessWidget(
                                            orderId: getJsonField(
                                              (_model.orderresponceonline
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.data.order_id''',
                                            ).toString(),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));

                                context.goNamed('ProductsPage');

                                await SQLiteManager.instance.deleteAll();
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: const AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: const SizedBox(
                                          height: 300.0,
                                          width: 300.0,
                                          child: OrderFailedWidget(),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Payment faild.',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 1100),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).error,
                                ),
                              );
                            }

                            if (shouldSetState) setState(() {});
                          },
                          text: 'PLACE ORDER',
                          options: FFButtonOptions(
                            width: double.infinity,
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
                      ),
                    ),
                  ),
                if (_model.checkboxValue3 == true)
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Builder(
                      builder: (context) => Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 16.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            var shouldSetState = false;
                            if (currentAuthenticationToken != null &&
                                currentAuthenticationToken != '') {
                              _model.cashapiResulta5j =
                                  await KMartAPIsGroup.tokenValidetionCall.call(
                                token: currentAuthenticationToken,
                              );

                              shouldSetState = true;
                              if (!(_model.cashapiResulta5j?.succeeded ??
                                  true)) {
                                _model.cashapiResultrefreshtoken =
                                    await KMartAPIsGroup.refreshTokenCall.call(
                                  refreshToken: currentAuthRefreshToken,
                                );

                                shouldSetState = true;
                                if ((_model
                                        .cashapiResultrefreshtoken?.succeeded ??
                                    true)) {
                                  authManager.updateAuthUserData(
                                    authenticationToken: getJsonField(
                                      (_model.cashapiResultrefreshtoken
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
                            } else {
                              context.pushNamed('LoginPage');

                              if (shouldSetState) setState(() {});
                              return;
                            }

                            _model.allgetitemcash =
                                await SQLiteManager.instance.allget();
                            shouldSetState = true;
                            _model.getTotalpricecash =
                                await SQLiteManager.instance.getTotalprice();
                            shouldSetState = true;
                            _model.cashorderApiresult =
                                await KMartAPIsGroup.cashOrderCall.call(
                              customerId: currentUserData?.id,
                              customerName: currentUserData?.userName,
                              mobileNumber: currentUserData?.moblieNumber,
                              shippingAddress: currentUserData?.shippingAddress,
                              orderTotal:
                                  _model.getTotalpricecash?.first.totalPrice,
                              orderItemsJson: functions.convertToitem(
                                  _model.allgetitemcash!
                                      .map((e) => e.itemid)
                                      .toList(),
                                  _model.allgetitemcash!
                                      .map((e) => e.productName)
                                      .toList(),
                                  _model.allgetitemcash!
                                      .map((e) => e.price)
                                      .toList(),
                                  _model.allgetitemcash!
                                      .map((e) => e.quantity)
                                      .toList()),
                              paymentMode: 'cash',
                              paymentStatus: 'pending',
                              orderType: 'regular',
                              orderStatus: 'pending',
                              token: currentAuthenticationToken,
                            );

                            shouldSetState = true;
                            if ((_model.cashorderApiresult?.succeeded ??
                                true)) {
                              await showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: const AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: GestureDetector(
                                      onTap: () => _model
                                              .unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                      child: SizedBox(
                                        height: 340.0,
                                        width: 300.0,
                                        child: OrderSuccessWidget(
                                          orderId: getJsonField(
                                            (_model.cashorderApiresult
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.data.order_id''',
                                          ).toString(),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));

                              context.goNamed('ProductsPage');

                              await SQLiteManager.instance.deleteAll();
                            } else {
                              await showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: const AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: GestureDetector(
                                      onTap: () => _model
                                              .unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                      child: const SizedBox(
                                        height: 300.0,
                                        width: 300.0,
                                        child: OrderFailedWidget(),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            }

                            if (shouldSetState) setState(() {});
                          },
                          text: 'PLACE ORDER',
                          options: FFButtonOptions(
                            width: double.infinity,
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
                      ),
                    ),
                  ),
                if ((_model.checkboxValue1 == false) &&
                    (_model.checkboxValue2 == false) &&
                    (_model.checkboxValue3 == false))
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 16.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please select payment mode.',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              duration: const Duration(milliseconds: 1000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).error,
                            ),
                          );
                        },
                        text: 'PLACE ORDER',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
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
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
