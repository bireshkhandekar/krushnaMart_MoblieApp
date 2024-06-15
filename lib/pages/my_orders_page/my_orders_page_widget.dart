import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_cancell_orders/empty_cancell_orders_widget.dart';
import '/components/empty_orders/empty_orders_widget.dart';
import '/components/order_details/order_details_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'my_orders_page_model.dart';
export 'my_orders_page_model.dart';

class MyOrdersPageWidget extends StatefulWidget {
  const MyOrdersPageWidget({super.key});

  @override
  State<MyOrdersPageWidget> createState() => _MyOrdersPageWidgetState();
}

class _MyOrdersPageWidgetState extends State<MyOrdersPageWidget>
    with TickerProviderStateMixin {
  late MyOrdersPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyOrdersPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (currentAuthenticationToken != null &&
          currentAuthenticationToken != '') {
        _model.apiResulta5j = await KMartAPIsGroup.tokenValidetionCall.call(
          token: currentAuthenticationToken,
        );
        if (!(_model.apiResulta5j?.succeeded ?? true)) {
          _model.apiResultrefreshtoken =
              await KMartAPIsGroup.refreshTokenCall.call(
            refreshToken: currentAuthRefreshToken,
          );
          if ((_model.apiResultrefreshtoken?.succeeded ?? true)) {
            authManager.updateAuthUserData(
              authenticationToken: getJsonField(
                (_model.apiResultrefreshtoken?.jsonBody ?? ''),
                r'''$.data.access_token''',
              ).toString().toString(),
              refreshToken: currentAuthRefreshToken,
              authUid: currentUserUid,
              userData: UserStruct(
                id: currentUserData?.id,
                userName: currentUserData?.userName,
                moblieNumber: currentUserData?.moblieNumber,
                shippingAddress: currentUserData?.shippingAddress,
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
          }
        }
      }
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
            'My orders',
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
          child: Builder(
            builder: (context) {
              if (currentAuthenticationToken != null &&
                  currentAuthenticationToken != '') {
                return FutureBuilder<ApiCallResponse>(
                  future: KMartAPIsGroup.getOrdersByUserIdCall.call(
                    userId: currentUserData?.id,
                    limit: 10,
                    pageno: _model.pageno,
                    token: currentAuthenticationToken,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child: SpinKitCircle(
                            color: FlutterFlowTheme.of(context).primary,
                            size: 40.0,
                          ),
                        ),
                      );
                    }
                    final columnGetOrdersByUserIdResponse = snapshot.data!;
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: const Alignment(-1.0, 0),
                                child: TabBar(
                                  isScrollable: true,
                                  labelColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  unselectedLabelColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                      ),
                                  unselectedLabelStyle:
                                      FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                          ),
                                  indicatorColor:
                                      FlutterFlowTheme.of(context).primary,
                                  indicatorWeight: 3.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      4.0, 8.0, 4.0, 4.0),
                                  tabs: const [
                                    Tab(
                                      text: 'All',
                                    ),
                                    Tab(
                                      text: 'Cancelled',
                                    ),
                                  ],
                                  controller: _model.tabBarController,
                                  onTap: (i) async {
                                    [() async {}, () async {}][i]();
                                  },
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: _model.tabBarController,
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        final getorders =
                                            KMartAPIsGroup.getOrdersByUserIdCall
                                                    .orders(
                                                      columnGetOrdersByUserIdResponse
                                                          .jsonBody,
                                                    )
                                                    ?.toList() ??
                                                [];
                                        if (getorders.isEmpty) {
                                          return const EmptyOrdersWidget();
                                        }
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: getorders.length,
                                          itemBuilder:
                                              (context, getordersIndex) {
                                            final getordersItem =
                                                getorders[getordersIndex];
                                            return Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 0.0, 4.0, 0.0),
                                              child: Card(
                                                clipBehavior:
                                                    Clip.antiAliasWithSaveLayer,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 8.0, 8.0, 8.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    4.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'Order Number : ',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  getJsonField(
                                                                    getordersItem,
                                                                    r'''$.order_id''',
                                                                  ).toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                            Text(
                                                              getJsonField(
                                                                getordersItem,
                                                                r'''$.order_date''',
                                                              ).toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Divider(
                                                        height: 1.0,
                                                        thickness: 0.2,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      'Total Amount : ',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      getJsonField(
                                                                        getordersItem,
                                                                        r'''$.order_total''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  child:
                                                                      Builder(
                                                                    builder:
                                                                        (context) {
                                                                      if ('completed' ==
                                                                          getJsonField(
                                                                            getordersItem,
                                                                            r'''$.order_status''',
                                                                          ).toString()) {
                                                                        return Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            const FaIcon(
                                                                              FontAwesomeIcons.checkCircle,
                                                                              color: Color(0xFF18A510),
                                                                              size: 16.0,
                                                                            ),
                                                                            Text(
                                                                              'Completed',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: const Color(0xFF18A510),
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 1.5)),
                                                                        );
                                                                      } else if ('cancelled' ==
                                                                          getJsonField(
                                                                            getordersItem,
                                                                            r'''$.order_status''',
                                                                          ).toString()) {
                                                                        return Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            Icon(
                                                                              Icons.cancel_outlined,
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              size: 18.0,
                                                                            ),
                                                                            Text(
                                                                              'cancelled',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 1.5)),
                                                                        );
                                                                      } else if ('pending' ==
                                                                          getJsonField(
                                                                            getordersItem,
                                                                            r'''$.order_status''',
                                                                          ).toString()) {
                                                                        return Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            const FaIcon(
                                                                              FontAwesomeIcons.clock,
                                                                              color: Color(0xFF516CF0),
                                                                              size: 16.0,
                                                                            ),
                                                                            Text(
                                                                              'Pending',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: const Color(0xFF516CF0),
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 1.5)),
                                                                        );
                                                                      } else {
                                                                        return Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            const FaIcon(
                                                                              FontAwesomeIcons.clock,
                                                                              color: Color(0xFF516CF0),
                                                                              size: 16.0,
                                                                            ),
                                                                            Text(
                                                                              'Processing',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: const Color(0xFF516CF0),
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 1.5)),
                                                                        );
                                                                      }
                                                                    },
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          4.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Expanded(
                                                                    flex: 7,
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Builder(
                                                                          builder: (context) =>
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              if (currentAuthenticationToken != null && currentAuthenticationToken != '') {
                                                                                _model.detailsapiResulta5j = await KMartAPIsGroup.tokenValidetionCall.call(
                                                                                  token: currentAuthenticationToken,
                                                                                );
                                                                                if (!(_model.detailsapiResulta5j?.succeeded ?? true)) {
                                                                                  _model.detailsapiResultrefreshtoken = await KMartAPIsGroup.refreshTokenCall.call(
                                                                                    refreshToken: currentAuthRefreshToken,
                                                                                  );
                                                                                  if ((_model.detailsapiResultrefreshtoken?.succeeded ?? true)) {
                                                                                    authManager.updateAuthUserData(
                                                                                      authenticationToken: getJsonField(
                                                                                        (_model.detailsapiResultrefreshtoken?.jsonBody ?? ''),
                                                                                        r'''$.data.access_token''',
                                                                                      ).toString(),
                                                                                      refreshToken: currentAuthRefreshToken,
                                                                                      authUid: currentUserUid,
                                                                                      userData: UserStruct(
                                                                                        id: currentUserData?.id,
                                                                                        userName: currentUserData?.userName,
                                                                                        moblieNumber: currentUserData?.moblieNumber,
                                                                                        shippingAddress: currentUserData?.shippingAddress,
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
                                                                                  }
                                                                                }
                                                                              } else {
                                                                                context.pushNamed('LoginPage');
                                                                              }

                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (dialogContext) {
                                                                                  return Dialog(
                                                                                    elevation: 0,
                                                                                    insetPadding: EdgeInsets.zero,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                    child: GestureDetector(
                                                                                      onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                      child: SizedBox(
                                                                                        height: 650.0,
                                                                                        width: 360.0,
                                                                                        child: OrderDetailsWidget(
                                                                                          orderid: getJsonField(
                                                                                            getordersItem,
                                                                                            r'''$.order_id''',
                                                                                          ).toString(),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ).then((value) => setState(() {}));

                                                                              setState(() {});
                                                                            },
                                                                            text:
                                                                                'Details',
                                                                            options:
                                                                                FFButtonOptions(
                                                                              width: 80.0,
                                                                              height: 32.0,
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                width: 0.5,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(18.0),
                                                                            ),
                                                                            showLoadingIndicator:
                                                                                false,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  if (('processing' ==
                                                                          getJsonField(
                                                                            getordersItem,
                                                                            r'''$.order_status''',
                                                                          ).toString()) ||
                                                                      ('pending' ==
                                                                          getJsonField(
                                                                            getordersItem,
                                                                            r'''$.order_status''',
                                                                          ).toString()))
                                                                    Expanded(
                                                                      flex: 3,
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                if (currentAuthenticationToken != null && currentAuthenticationToken != '') {
                                                                                  _model.cancelapiResulta5j = await KMartAPIsGroup.tokenValidetionCall.call(
                                                                                    token: currentAuthenticationToken,
                                                                                  );
                                                                                  if (!(_model.cancelapiResulta5j?.succeeded ?? true)) {
                                                                                    _model.cancelapiResultrefreshtoken = await KMartAPIsGroup.refreshTokenCall.call(
                                                                                      refreshToken: currentAuthRefreshToken,
                                                                                    );
                                                                                    if ((_model.cancelapiResultrefreshtoken?.succeeded ?? true)) {
                                                                                      authManager.updateAuthUserData(
                                                                                        authenticationToken: getJsonField(
                                                                                          (_model.cancelapiResultrefreshtoken?.jsonBody ?? ''),
                                                                                          r'''$.data.access_token''',
                                                                                        ).toString(),
                                                                                        refreshToken: currentAuthRefreshToken,
                                                                                        authUid: currentUserUid,
                                                                                        userData: UserStruct(
                                                                                          id: currentUserData?.id,
                                                                                          userName: currentUserData?.userName,
                                                                                          moblieNumber: currentUserData?.moblieNumber,
                                                                                          shippingAddress: currentUserData?.shippingAddress,
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
                                                                                    }
                                                                                  }
                                                                                } else {
                                                                                  context.pushNamed('LoginPage');
                                                                                }

                                                                                var confirmDialogResponse = await showDialog<bool>(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return AlertDialog(
                                                                                          content: const Text('Are you sure cancel your order ?'),
                                                                                          actions: [
                                                                                            TextButton(
                                                                                              onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                              child: const Text('No'),
                                                                                            ),
                                                                                            TextButton(
                                                                                              onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                              child: const Text('Yes'),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ) ??
                                                                                    false;
                                                                                if (confirmDialogResponse) {
                                                                                  _model.apiResultmuj = await KMartAPIsGroup.orderCanceledCall.call(
                                                                                    orderId: getJsonField(
                                                                                      getordersItem,
                                                                                      r'''$.order_id''',
                                                                                    ).toString(),
                                                                                    status: 'cancelled',
                                                                                    token: currentAuthenticationToken,
                                                                                  );
                                                                                  if ((_model.apiResultmuj?.succeeded ?? true)) {
                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                      SnackBar(
                                                                                        content: Text(
                                                                                          'Your Order Are Cancaled.',
                                                                                          style: TextStyle(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                          ),
                                                                                        ),
                                                                                        duration: const Duration(milliseconds: 4000),
                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                      ),
                                                                                    );
                                                                                  } else {
                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                      SnackBar(
                                                                                        content: Text(
                                                                                          'Your Order Are Not Cancaled.',
                                                                                          style: TextStyle(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                          ),
                                                                                        ),
                                                                                        duration: const Duration(milliseconds: 4000),
                                                                                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                      ),
                                                                                    );
                                                                                  }
                                                                                }

                                                                                setState(() {});
                                                                              },
                                                                              child: Text(
                                                                                'Cancel',
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      decoration: TextDecoration.underline,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                    FutureBuilder<ApiCallResponse>(
                                      future: KMartAPIsGroup
                                          .getOrderByStatusCall
                                          .call(
                                        status: 'cancelled',
                                        userid: currentUserData?.id,
                                        token: currentAuthenticationToken,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final listViewGetOrderByStatusResponse =
                                            snapshot.data!;
                                        return Builder(
                                          builder: (context) {
                                            final getcancelledorders =
                                                KMartAPIsGroup
                                                        .getOrderByStatusCall
                                                        .orders(
                                                          listViewGetOrderByStatusResponse
                                                              .jsonBody,
                                                        )
                                                        ?.toList() ??
                                                    [];
                                            if (getcancelledorders.isEmpty) {
                                              return const EmptyCancellOrdersWidget();
                                            }
                                            return ListView.builder(
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount:
                                                  getcancelledorders.length,
                                              itemBuilder: (context,
                                                  getcancelledordersIndex) {
                                                final getcancelledordersItem =
                                                    getcancelledorders[
                                                        getcancelledordersIndex];
                                                return Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 0.0, 4.0, 0.0),
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  8.0,
                                                                  8.0,
                                                                  8.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        4.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      'Order Number : ',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      getJsonField(
                                                                        getcancelledordersItem,
                                                                        r'''$.order_id''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Text(
                                                                  getJsonField(
                                                                    getcancelledordersItem,
                                                                    r'''$.order_date''',
                                                                  ).toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Divider(
                                                            height: 1.0,
                                                            thickness: 0.2,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          4.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Expanded(
                                                                        flex: 7,
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              'Total Oty : ',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              '10',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 3,
                                                                        child:
                                                                            Builder(
                                                                          builder:
                                                                              (context) {
                                                                            if ('completed' ==
                                                                                getJsonField(
                                                                                  getcancelledordersItem,
                                                                                  r'''$.order_status''',
                                                                                ).toString()) {
                                                                              return Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  const FaIcon(
                                                                                    FontAwesomeIcons.checkCircle,
                                                                                    color: Color(0xFF18A510),
                                                                                    size: 16.0,
                                                                                  ),
                                                                                  Text(
                                                                                    'Completed',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          color: const Color(0xFF18A510),
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                        ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 1.5)),
                                                                              );
                                                                            } else if ('cancelled' ==
                                                                                getJsonField(
                                                                                  getcancelledordersItem,
                                                                                  r'''$.order_status''',
                                                                                ).toString()) {
                                                                              return Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Icon(
                                                                                    Icons.cancel_outlined,
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    size: 18.0,
                                                                                  ),
                                                                                  Text(
                                                                                    'cancelled',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          color: FlutterFlowTheme.of(context).error,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                        ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 1.5)),
                                                                              );
                                                                            } else {
                                                                              return Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  const FaIcon(
                                                                                    FontAwesomeIcons.clock,
                                                                                    color: Color(0xFF516CF0),
                                                                                    size: 16.0,
                                                                                  ),
                                                                                  Text(
                                                                                    'Processing',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          color: const Color(0xFF516CF0),
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                        ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 1.5)),
                                                                              );
                                                                            }
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      'Total Amount : ',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      getJsonField(
                                                                        getcancelledordersItem,
                                                                        r'''$.order_total''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          4.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Expanded(
                                                                        flex: 7,
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Builder(
                                                                              builder: (context) => FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  if (currentAuthenticationToken != null && currentAuthenticationToken != '') {
                                                                                    _model.cancelldetailsapiResulta5j = await KMartAPIsGroup.tokenValidetionCall.call(
                                                                                      token: currentAuthenticationToken,
                                                                                    );
                                                                                    if (!(_model.cancelldetailsapiResulta5j?.succeeded ?? true)) {
                                                                                      _model.cancelldetailsapiResultrefreshtoken = await KMartAPIsGroup.refreshTokenCall.call(
                                                                                        refreshToken: currentAuthRefreshToken,
                                                                                      );
                                                                                      if ((_model.cancelldetailsapiResultrefreshtoken?.succeeded ?? true)) {
                                                                                        authManager.updateAuthUserData(
                                                                                          authenticationToken: getJsonField(
                                                                                            (_model.detailsapiResultrefreshtoken?.jsonBody ?? ''),
                                                                                            r'''$.data.access_token''',
                                                                                          ).toString(),
                                                                                          refreshToken: currentAuthRefreshToken,
                                                                                          authUid: currentUserUid,
                                                                                          userData: UserStruct(
                                                                                            id: currentUserData?.id,
                                                                                            userName: currentUserData?.userName,
                                                                                            moblieNumber: currentUserData?.moblieNumber,
                                                                                            shippingAddress: currentUserData?.shippingAddress,
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
                                                                                      }
                                                                                    }
                                                                                  } else {
                                                                                    context.pushNamed('LoginPage');
                                                                                  }

                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (dialogContext) {
                                                                                      return Dialog(
                                                                                        elevation: 0,
                                                                                        insetPadding: EdgeInsets.zero,
                                                                                        backgroundColor: Colors.transparent,
                                                                                        alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                        child: GestureDetector(
                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                          child: SizedBox(
                                                                                            height: 650.0,
                                                                                            width: 360.0,
                                                                                            child: OrderDetailsWidget(
                                                                                              orderid: getJsonField(
                                                                                                getcancelledordersItem,
                                                                                                r'''$.order_id''',
                                                                                              ).toString(),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => setState(() {}));

                                                                                  setState(() {});
                                                                                },
                                                                                text: 'Details',
                                                                                options: FFButtonOptions(
                                                                                  width: 80.0,
                                                                                  height: 32.0,
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    width: 0.5,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(18.0),
                                                                                ),
                                                                                showLoadingIndicator: false,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (_model.tabBarCurrentIndex == 0)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 2.0, 8.0, 2.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FFButtonWidget(
                                  onPressed: (_model.pageno == 1)
                                      ? null
                                      : () async {
                                          _model.pageno = _model.pageno! + -1;
                                          setState(() {});
                                        },
                                  text: '<- Back',
                                  options: FFButtonOptions(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFF7995FF),
                                          letterSpacing: 0.0,
                                        ),
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                    disabledTextColor: const Color(0xF292BBDC),
                                  ),
                                  showLoadingIndicator: false,
                                ),
                                FFButtonWidget(
                                  onPressed: (_model.pageno ==
                                          getJsonField(
                                            columnGetOrdersByUserIdResponse
                                                .jsonBody,
                                            r'''$.total_page''',
                                          ))
                                      ? null
                                      : () async {
                                          _model.pageno = _model.pageno! + 1;
                                          setState(() {});
                                        },
                                  text: 'More orders -> ',
                                  options: FFButtonOptions(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFF5477FD),
                                          letterSpacing: 0.0,
                                        ),
                                    borderRadius: BorderRadius.circular(8.0),
                                    disabledTextColor: const Color(0xF292BBDC),
                                  ),
                                  showLoadingIndicator: false,
                                ),
                              ],
                            ),
                          ),
                      ],
                    );
                  },
                );
              } else {
                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('LoginPage');
                        },
                        text: 'login',
                        options: FFButtonOptions(
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
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
