import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start KMart APIs Group Code

class KMartAPIsGroup {
  static String getBaseUrl() => 'http://api.rajastechnologies.com:5001';
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
  static OrderApiOnlineCall orderApiOnlineCall = OrderApiOnlineCall();
  static OrderApiCall orderApiCall = OrderApiCall();
  static AddAmountWalletCall addAmountWalletCall = AddAmountWalletCall();
  static DeductfundsWalletCall deductfundsWalletCall = DeductfundsWalletCall();
  static GetsubscriptionsCall getsubscriptionsCall = GetsubscriptionsCall();
  static CashOrderCall cashOrderCall = CashOrderCall();
  static GetOrdersByUserIdCall getOrdersByUserIdCall = GetOrdersByUserIdCall();
  static GetOrderByOrderIdCall getOrderByOrderIdCall = GetOrderByOrderIdCall();
  static GetSubByIdCall getSubByIdCall = GetSubByIdCall();
  static SubscribeUpdateCall subscribeUpdateCall = SubscribeUpdateCall();
  static OrderCanceledCall orderCanceledCall = OrderCanceledCall();
  static GetOrderByStatusCall getOrderByStatusCall = GetOrderByStatusCall();
  static TokenValidetionCall tokenValidetionCall = TokenValidetionCall();
  static RefreshTokenCall refreshTokenCall = RefreshTokenCall();
  static SubscriptionPauseApiCall subscriptionPauseApiCall =
      SubscriptionPauseApiCall();
  static ItemsByCategoryIdCall itemsByCategoryIdCall = ItemsByCategoryIdCall();
  static GetAboutUsApiCall getAboutUsApiCall = GetAboutUsApiCall();
}

class GetItemsAPICall {
  Future<ApiCallResponse> call() async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get items API',
      apiUrl: '$baseUrl/items',
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
        r'''$.data''',
        true,
      ) as List?;
}

class ItemByIdCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Item By id',
      apiUrl: '$baseUrl/item/$id',
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
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get hero images',
      apiUrl: '$baseUrl/images',
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
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Tags api',
      apiUrl: '$baseUrl/tags/$tagName',
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
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user_id": $userId,
  "item_id": $itemsId,
  "subscribe_type": "$subscribeType",
  "item_price": $itemsPrice,
  "start_date": "$startDate",
  "end_date": "$endDate",
  "quantity": $quantity,
  "total_price":$totalPrice,
  "subscription_status": "active"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SubscribeItems API',
      apiUrl: '$baseUrl/subscription/daily/create',
      callType: ApiCallType.POST,
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

class UserProfileAPICall {
  Future<ApiCallResponse> call({
    int? userId,
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'UserProfile API',
      apiUrl: '$baseUrl/user/profile/$userId',
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

  dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.username''',
      ));
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
    String? pin = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "$username",
  "mobile_number": "$moblienumber",
  "address": {
    "house_no": "$houseno",
    "line_no": "$lineno",
    "landmark": "$landmark"
  },
  "city": "$city",
  "state": "$state",
  "pincode": $pincode,
  "pin": "$pin"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'User Register API',
      apiUrl: '$baseUrl/user/register',
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
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "mobile_number": "$moblieNumber",
  "pin": "$pin"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'User Set Pin API',
      apiUrl: '$baseUrl/user/set_pin',
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
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "mobile_number": "$moblieNumber",
  "pin": "$pin"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'User login API',
      apiUrl: '$baseUrl/user/login',
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
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Wallet Balance',
      apiUrl: '$baseUrl/wallet/balance/$userId',
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

class GetWalletTransectionAPICall {
  Future<ApiCallResponse> call({
    int? userId,
    String? token = '',
    int? limit,
    int? pageno,
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Wallet Transection API',
      apiUrl:
          '$baseUrl/wallet/transactions/$userId?limit=$limit&page=$pageno',
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

  List? transaction(dynamic response) => getJsonField(
        response,
        r'''$.data.transactions''',
        true,
      ) as List?;
}

class UpdateUserProfileCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? city = '',
    int? pincode,
    String? state = '',
    String? username = '',
    String? token = '',
    String? lineNo = '',
    String? houseNo = '',
    String? landmark = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "$username",
  "address": {
    "house_no": "$houseNo",
    "line_no": "$lineNo",
    "landmark": "$landmark"
  },
  "city": "$city",
  "state": "$state",
  "pincode": $pincode
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update user profile ',
      apiUrl: '$baseUrl/user/update/$userId',
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
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();
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
      "dates": $customdates,
      "quantity": $customqty
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SubscribeItemscustomApi',
      apiUrl: '$baseUrl/subscription/custom/create',
      callType: ApiCallType.POST,
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

class OrderApiOnlineCall {
  Future<ApiCallResponse> call({
    int? customerId,
    String? customerName = '',
    String? mobileNumber = '',
    String? shippingAddress = '',
    double? orderTotal,
    String? paymentMode = '',
    String? paymentStatus = '',
    String? orderType = '',
    dynamic orderItemsJson,
    String? transactionId = '',
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    final orderItems = _serializeJson(orderItemsJson, true);
    final ffApiRequestBody = '''
{
  "customer_id": $customerId,
  "customer_name": "$customerName",
  "mobile_number": "$mobileNumber",
  "shipping_address": "$shippingAddress",
  "order_total": $orderTotal,
  "order_items": $orderItems,
  "payment_mode": "$paymentMode",
  "payment_status": "$paymentStatus",
  "order_type": "$orderType",
  "order_status":"pending",
  "transaction_id":"$transactionId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'orderApi online',
      apiUrl: '$baseUrl/order/create',
      callType: ApiCallType.POST,
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

class OrderApiCall {
  Future<ApiCallResponse> call({
    int? customerId,
    String? customerName = '',
    String? mobileNumber = '',
    String? shippingAddress = '',
    double? orderTotal,
    String? paymentMode = '',
    String? paymentStatus = '',
    String? orderType = '',
    dynamic orderItemsJson,
    String? transactionId = '',
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    final orderItems = _serializeJson(orderItemsJson, true);
    final ffApiRequestBody = '''
{
  "customer_id": $customerId,
  "customer_name": "$customerName",
  "mobile_number": "$mobileNumber",
  "shipping_address": "$shippingAddress",
  "order_total": $orderTotal,
  "order_items": $orderItems,
  "payment_mode": "$paymentMode",
  "payment_status": "$paymentStatus",
  "order_type": "$orderType",
  "order_status":"pending"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'orderApi',
      apiUrl: '$baseUrl/order/create',
      callType: ApiCallType.POST,
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

class AddAmountWalletCall {
  Future<ApiCallResponse> call({
    int? userId,
    double? amount,
    String? transactionId = '',
    String? transactionMode = '',
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "amount": $amount,
  "transaction_id": "$transactionId",
  "transaction_mode": "$transactionMode"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add amount Wallet',
      apiUrl: '$baseUrl/wallet/add-funds/$userId',
      callType: ApiCallType.POST,
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

class DeductfundsWalletCall {
  Future<ApiCallResponse> call({
    int? userId,
    double? purchaseAmount,
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "purchase_amount": $purchaseAmount,
  "transaction_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'DeductfundsWallet',
      apiUrl: '$baseUrl/wallet/deduct-funds/$userId',
      callType: ApiCallType.POST,
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

class GetsubscriptionsCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Getsubscriptions',
      apiUrl: '$baseUrl/subscription/user/$userId',
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

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class CashOrderCall {
  Future<ApiCallResponse> call({
    int? customerId,
    String? customerName = '',
    String? mobileNumber = '',
    String? shippingAddress = '',
    double? orderTotal,
    dynamic orderItemsJson,
    String? paymentMode = '',
    String? paymentStatus = '',
    String? orderType = '',
    String? orderStatus = '',
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    final orderItems = _serializeJson(orderItemsJson, true);
    final ffApiRequestBody = '''
{
  "customer_id": $customerId,
  "customer_name": "$customerName",
  "mobile_number": "$mobileNumber",
  "shipping_address": "$shippingAddress",
  "order_total": $orderTotal,
  "order_items": $orderItems,
  "payment_mode": "$paymentMode",
  "payment_status": "$paymentStatus",
  "order_type": "$orderType",
  "order_status": "$orderStatus"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cashOrder',
      apiUrl: '$baseUrl/order/create',
      callType: ApiCallType.POST,
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

class GetOrdersByUserIdCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? limit,
    int? pageno,
    String? status = '',
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get orders by user id',
      apiUrl:
          '$baseUrl/orders/user/$userId?limit=$limit&page=$pageno&status=$status',
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

  List? orders(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class GetOrderByOrderIdCall {
  Future<ApiCallResponse> call({
    String? orderId = '',
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get order by orderId',
      apiUrl: '$baseUrl/order/$orderId',
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

  dynamic order(dynamic response) => getJsonField(
        response,
        r'''$.order''',
      );
  List? orderitems(dynamic response) => getJsonField(
        response,
        r'''$.order.order_items''',
        true,
      ) as List?;
}

class GetSubByIdCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get sub by id ',
      apiUrl: '$baseUrl/subscription/$id',
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

class SubscribeUpdateCall {
  Future<ApiCallResponse> call({
    int? subid,
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'subscribe update',
      apiUrl: '$baseUrl/subscription/disable/$subid',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class OrderCanceledCall {
  Future<ApiCallResponse> call({
    String? orderId = '',
    String? status = '',
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "order_status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'orderCanceled',
      apiUrl: '$baseUrl/order/$orderId',
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

class GetOrderByStatusCall {
  Future<ApiCallResponse> call({
    String? status = '',
    int? userid,
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get order by status',
      apiUrl:
          '$baseUrl/order_by_order_status?user_id=$userid&order_status=$status',
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

  List? orders(dynamic response) => getJsonField(
        response,
        r'''$.orders''',
        true,
      ) as List?;
}

class TokenValidetionCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'token validetion',
      apiUrl: '$baseUrl/auth/validate_token',
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

class RefreshTokenCall {
  Future<ApiCallResponse> call({
    String? refreshToken = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'refresh token',
      apiUrl: '$baseUrl/auth/refresh_token',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $refreshToken',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SubscriptionPauseApiCall {
  Future<ApiCallResponse> call({
    int? subId,
    String? startDate = '',
    String? endDate = '',
    String? token = '',
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "pause_start_date": "$startDate",
  "pause_end_date": "$endDate"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'subscription pause Api',
      apiUrl: '$baseUrl/subscription/pause/$subId',
      callType: ApiCallType.POST,
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

class ItemsByCategoryIdCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'items by category id',
      apiUrl: '$baseUrl/items_by_category/$id',
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

  List? items(dynamic response) => getJsonField(
        response,
        r'''$.items''',
        true,
      ) as List?;
}

class GetAboutUsApiCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = KMartAPIsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get about us api',
      apiUrl: '$baseUrl/about/',
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

class PincodeCall {
  static Future<ApiCallResponse> call({
    String? pincode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'pincode',
      apiUrl: 'https://api.postalpincode.in/pincode/$pincode',
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

  static List<String>? state(dynamic response) => (getJsonField(
        response,
        r'''$[:].PostOffice[:].State''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
