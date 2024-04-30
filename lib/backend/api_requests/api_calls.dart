import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start KMart APIs Group Code

class KMartAPIsGroup {
  static String baseUrl = 'http://api.rajastechnologies.com:5001';
  static Map<String, String> headers = {};
  static GetItemsAPICall getItemsAPICall = GetItemsAPICall();
  static ItemByIdCall itemByIdCall = ItemByIdCall();
  static GetHeroImagesCall getHeroImagesCall = GetHeroImagesCall();
  static TagsApiCall tagsApiCall = TagsApiCall();
  static SubscribeItemsAPICall subscribeItemsAPICall = SubscribeItemsAPICall();
  static UserProfileAPICall userProfileAPICall = UserProfileAPICall();
  static UserRegisterAPICall userRegisterAPICall = UserRegisterAPICall();
  static UserSetPinAPICall userSetPinAPICall = UserSetPinAPICall();
  static UserLoginAPICall userLoginAPICall = UserLoginAPICall();
  static GetWalletBalanceCall getWalletBalanceCall = GetWalletBalanceCall();
  static GetWalletTransectionAPICall getWalletTransectionAPICall =
      GetWalletTransectionAPICall();
  static UpdateUserProfileCall updateUserProfileCall = UpdateUserProfileCall();
  static SubscribeItemscustomApiCall subscribeItemscustomApiCall =
      SubscribeItemscustomApiCall();
  static OrderApiCall orderApiCall = OrderApiCall();
}

class GetItemsAPICall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get items API',
      apiUrl: '${KMartAPIsGroup.baseUrl}/items',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? allitems(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class ItemByIdCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Item By id',
      apiUrl: '${KMartAPIsGroup.baseUrl}/item/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetHeroImagesCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get hero images',
      apiUrl: '${KMartAPIsGroup.baseUrl}/images',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? heroimage(dynamic response) => (getJsonField(
        response,
        r'''$[:].hero_image_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class TagsApiCall {
  Future<ApiCallResponse> call({
    String? tagName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Tags api',
      apiUrl: '${KMartAPIsGroup.baseUrl}/tags/$tagName',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<double>? discount(dynamic response) => (getJsonField(
        response,
        r'''$[:].discount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class SubscribeItemsAPICall {
  Future<ApiCallResponse> call({
    int? userId,
    int? itemsId,
    String? subscribeType = '',
    double? itemsPrice,
    String? startDate = '',
    String? endDate = '',
    int? quantity,
    double? totalPrice,
    List<String>? customDatesList,
    List<int>? customQtyList,
    int? customitemprice,
  }) async {
    final customDates = _serializeList(customDatesList);
    final customQty = _serializeList(customQtyList);

    final ffApiRequestBody = '''
{
  "user_id": $userId,
  "item_id": $itemsId,
  "subscribe_type": "$subscribeType",
  "item_price": $itemsPrice,
  "start_date": "$startDate",
  "end_date": "$endDate",
  "quantity": $quantity
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SubscribeItems API',
      apiUrl: '${KMartAPIsGroup.baseUrl}/subscriptions/create',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UserProfileAPICall {
  Future<ApiCallResponse> call({
    int? userId,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UserProfile API',
      apiUrl: '${KMartAPIsGroup.baseUrl}/user/profile/$userId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UserRegisterAPICall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? moblienumber = '',
    String? city = '',
    String? state = '',
    int? pincode,
    String? houseno = '',
    String? lineno = '',
    String? landmark = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "$username",
  "mobile_number": "$moblienumber",
  "address": {
    "houseno": "$houseno",
    "lineno": "$lineno",
    "landmark": "$landmark"
  },
  "city": "$city",
  "state": "$state",
  "pincode": $pincode
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'User Register API',
      apiUrl: '${KMartAPIsGroup.baseUrl}/user/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UserSetPinAPICall {
  Future<ApiCallResponse> call({
    String? moblieNumber = '',
    String? pin = '',
  }) async {
    final ffApiRequestBody = '''
{
  "mobile_number": "$moblieNumber",
  "pin": "$pin"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'User Set Pin API',
      apiUrl: '${KMartAPIsGroup.baseUrl}/user/set_pin',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UserLoginAPICall {
  Future<ApiCallResponse> call({
    String? moblieNumber = '',
    String? pin = '',
  }) async {
    final ffApiRequestBody = '''
{
  "mobile_number": "$moblieNumber",
  "pin": "$pin"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'User login API',
      apiUrl: '${KMartAPIsGroup.baseUrl}/user/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetWalletBalanceCall {
  Future<ApiCallResponse> call({
    int? userId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Wallet Balance',
      apiUrl: '${KMartAPIsGroup.baseUrl}/wallet/balance/$userId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetWalletTransectionAPICall {
  Future<ApiCallResponse> call({
    int? userId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Wallet Transection API',
      apiUrl: '${KMartAPIsGroup.baseUrl}/wallet/transactions/$userId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? transaction(dynamic response) => getJsonField(
        response,
        r'''$.transactions''',
        true,
      ) as List?;
  List<String>? time(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].timestamp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? amount(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? availableBalance(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].available_balance''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? mode(dynamic response) => (getJsonField(
        response,
        r'''$.transactions[:].transaction_mode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class UpdateUserProfileCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? address = '',
    String? city = '',
    int? pincode,
    String? state = '',
    String? username = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "address": "$address",
  "city": "$city",
  "pincode": "$pincode",
  "state": "$state",
  "username": "$username"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update user profile ',
      apiUrl: '${KMartAPIsGroup.baseUrl}/user/update/$userId',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SubscribeItemscustomApiCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? itemId,
    String? subscribeType = '',
    double? itemPrice,
    List<String>? customdatesList,
    List<int>? customqtyList,
  }) async {
    final customdates = _serializeList(customdatesList);
    final customqty = _serializeList(customqtyList);

    final ffApiRequestBody = '''
{
  "user_id": $userId,
  "item_id": $itemId,
  "subscribe_type": "$subscribeType",
  "item_price": $itemPrice,
  "custom_dates": [
    {
      "Dates": $customdates,
      "quantity": $customqty
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SubscribeItemscustomApi',
      apiUrl: '${KMartAPIsGroup.baseUrl}/subscriptions/create',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class OrderApiCall {
  Future<ApiCallResponse> call({
    int? customerId,
    String? customerName = '',
    String? mobileNumber = '',
    String? shippingAddress = '',
    double? orderTotal,
    int? itemId,
    String? itemName = '',
    int? itemPrice,
    int? quantity,
    String? paymentMode = '',
    String? paymentStatus = '',
    String? orderType = '',
  }) async {
    final ffApiRequestBody = '''
{
  "customer_id": $customerId,
  "customer_name": "$customerName",
  "mobile_number": "$mobileNumber",
  "shipping_address": "$shippingAddress",
  "order_total": $orderTotal,
  "order_items": [
    {
      "item_id": $itemId,
      "item_name": "$itemName",
      "item_price": $itemPrice,
      "quantity": $quantity,
      "total_price": 360
    }
  ],
  "payment_mode": "$paymentMode",
  "payment_status": "$paymentStatus",
  "order_type": "$orderType"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'orderApi',
      apiUrl: '${KMartAPIsGroup.baseUrl}/order',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End KMart APIs Group Code

class ProductApiCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ProductApi',
      apiUrl: 'https://dummyjson.com/products',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? productData(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      ) as List?;
}

class ProductListCall {
  static Future<ApiCallResponse> call({
    String? category = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ProductList',
      apiUrl: 'https://dummyjson.com/products/category/$category',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? products(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      ) as List?;
}

class ProductSubscribeCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ProductSubscribe',
      apiUrl: 'https://dummyjson.com/products/$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TagsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'tags',
      apiUrl: 'http://api.rajastechnologies.com:5001/categories',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
