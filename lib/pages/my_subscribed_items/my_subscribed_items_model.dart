import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_subscribed_items_widget.dart' show MySubscribedItemsWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MySubscribedItemsModel extends FlutterFlowModel<MySubscribedItemsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (token validetion)] action in MySubscribedItems widget.
  ApiCallResponse? apiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in MySubscribedItems widget.
  ApiCallResponse? apiResultrefreshtoken;
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall;

  // Stores action output result for [Backend Call - API (token validetion)] action in Text widget.
  ApiCallResponse? detailsapiResulta5j;
  // Stores action output result for [Backend Call - API (refresh token)] action in Text widget.
  ApiCallResponse? detailsapiResultrefreshtoken;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    listViewPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setListViewController(
    Function(ApiPagingParams) apiCall,
  ) {
    listViewApiCall = apiCall;
    return listViewPagingController ??= _createListViewController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createListViewController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(listViewGetsubscriptionsPage);
  }

  void listViewGetsubscriptionsPage(ApiPagingParams nextPageMarker) =>
      listViewApiCall!(nextPageMarker).then((listViewGetsubscriptionsResponse) {
        final pageItems = (KMartAPIsGroup.getsubscriptionsCall.data(
                  listViewGetsubscriptionsResponse.jsonBody,
                )! ??
                [])
            .toList();
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        listViewPagingController?.appendPage(
          pageItems,
          (pageItems.isNotEmpty)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: listViewGetsubscriptionsResponse,
                )
              : null,
        );
      });
}
