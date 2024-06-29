import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_orders_page_widget.dart' show MyOrdersPageWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MyOrdersPageModel extends FlutterFlowModel<MyOrdersPageWidget> {
  ///  Local state fields for this page.

  int? pageno = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (token validetion)] action in MyOrdersPage widget.
  ApiCallResponse? apiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in MyOrdersPage widget.
  ApiCallResponse? apiResultrefreshtoken;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController1;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall1;

  // Stores action output result for [Backend Call - API (token validetion)] action in Button widget.
  ApiCallResponse? detailsapiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in Button widget.
  ApiCallResponse? detailsapiResultrefreshtoken;
  // Stores action output result for [Backend Call - API (token validetion)] action in Text widget.
  ApiCallResponse? cancelapiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in Text widget.
  ApiCallResponse? cancelapiResultrefreshtoken;
  // Stores action output result for [Backend Call - API (orderCanceled)] action in Text widget.
  ApiCallResponse? apiResultmuj;
  // Stores action output result for [Backend Call - API (token validetion)] action in Button widget.
  ApiCallResponse? cancelldetailsapiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in Button widget.
  ApiCallResponse? cancelldetailsapiResultrefreshtoken;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    listViewPagingController1?.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setListViewController1(
    Function(ApiPagingParams) apiCall,
  ) {
    listViewApiCall1 = apiCall;
    return listViewPagingController1 ??= _createListViewController1(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createListViewController1(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(listViewGetOrdersByUserIdPage1);
  }

  void listViewGetOrdersByUserIdPage1(ApiPagingParams nextPageMarker) =>
      listViewApiCall1!(nextPageMarker)
          .then((listViewGetOrdersByUserIdResponse) {
        final pageItems = (KMartAPIsGroup.getOrdersByUserIdCall.orders(
                  listViewGetOrdersByUserIdResponse.jsonBody,
                )! ??
                [])
            .toList();
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        listViewPagingController1?.appendPage(
          pageItems,
          (pageItems.isNotEmpty)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: listViewGetOrdersByUserIdResponse,
                )
              : null,
        );
      });
}
