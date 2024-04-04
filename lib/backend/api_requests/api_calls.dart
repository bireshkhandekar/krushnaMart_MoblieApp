import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start KMart APIs Group Code

class KMartAPIsGroup {
  static String baseUrl = 'http://api.rajastechnologies.com:5001';
  static Map<String, String> headers = {};
  static CategoryPOSTCall categoryPOSTCall = CategoryPOSTCall();
  static CategoriesGETCall categoriesGETCall = CategoriesGETCall();
  static CategorycategoryIdGETCall categorycategoryIdGETCall =
      CategorycategoryIdGETCall();
  static CategorycategoryIdPUTCall categorycategoryIdPUTCall =
      CategorycategoryIdPUTCall();
  static CategorycategoryIdDELETECall categorycategoryIdDELETECall =
      CategorycategoryIdDELETECall();
  static TagsPOSTCall tagsPOSTCall = TagsPOSTCall();
  static TagsGETCall tagsGETCall = TagsGETCall();
  static TagstagNameGETCall tagstagNameGETCall = TagstagNameGETCall();
  static TagstagNameDELETECall tagstagNameDELETECall = TagstagNameDELETECall();
  static UploadAHeroImageToTheServerCall uploadAHeroImageToTheServerCall =
      UploadAHeroImageToTheServerCall();
  static DeleteAHeroImageFromTheServerCall deleteAHeroImageFromTheServerCall =
      DeleteAHeroImageFromTheServerCall();
  static GetAHeroImageFromTheServerByIdCall getAHeroImageFromTheServerByIdCall =
      GetAHeroImageFromTheServerByIdCall();
  static GetAllHeroImagesFromTheServerCall getAllHeroImagesFromTheServerCall =
      GetAllHeroImagesFromTheServerCall();
  static GetAHeroImageFromTheServerByNameCall
      getAHeroImageFromTheServerByNameCall =
      GetAHeroImageFromTheServerByNameCall();
}

class CategoryPOSTCall {
  Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "id": 0,
  "name": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: '/category POST',
      apiUrl: '${KMartAPIsGroup.baseUrl}/category',
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

class CategoriesGETCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: '/categories GET',
      apiUrl: '${KMartAPIsGroup.baseUrl}/categories',
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

class CategorycategoryIdGETCall {
  Future<ApiCallResponse> call({
    int? categoryId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: '/category/{category_id} GET',
      apiUrl: '${KMartAPIsGroup.baseUrl}/category/$categoryId',
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

class CategorycategoryIdPUTCall {
  Future<ApiCallResponse> call({
    int? categoryId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: '/category/{category_id} PUT',
      apiUrl: '${KMartAPIsGroup.baseUrl}/category/$categoryId',
      callType: ApiCallType.PUT,
      headers: {},
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

class CategorycategoryIdDELETECall {
  Future<ApiCallResponse> call({
    int? categoryId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: '/category/{category_id} DELETE',
      apiUrl: '${KMartAPIsGroup.baseUrl}/category/$categoryId',
      callType: ApiCallType.DELETE,
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

class TagsPOSTCall {
  Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "id": 0,
  "tag_name": "",
  "category_id": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: '/tags POST',
      apiUrl: '${KMartAPIsGroup.baseUrl}/tags',
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

class TagsGETCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: '/tags GET',
      apiUrl: '${KMartAPIsGroup.baseUrl}/tags',
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

class TagstagNameGETCall {
  Future<ApiCallResponse> call({
    String? tagName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: '/tags/{tag_name} GET',
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
}

class TagstagNameDELETECall {
  Future<ApiCallResponse> call({
    String? tagName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: '/tags/{tag_name} DELETE',
      apiUrl: '${KMartAPIsGroup.baseUrl}/tags/$tagName',
      callType: ApiCallType.DELETE,
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

class UploadAHeroImageToTheServerCall {
  Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "id": 0,
  "hero_image_url": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Upload a hero image to the server',
      apiUrl: '${KMartAPIsGroup.baseUrl}/image',
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

class DeleteAHeroImageFromTheServerCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete a hero image from the server',
      apiUrl: '${KMartAPIsGroup.baseUrl}/image/$id',
      callType: ApiCallType.DELETE,
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

class GetAHeroImageFromTheServerByIdCall {
  Future<ApiCallResponse> call({
    int? imageId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get a hero image from the server by id',
      apiUrl: '${KMartAPIsGroup.baseUrl}/image/$imageId',
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

class GetAllHeroImagesFromTheServerCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get all hero images from the server',
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

  List<String>? images(dynamic response) => (getJsonField(
        response,
        r'''$''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetAHeroImageFromTheServerByNameCall {
  Future<ApiCallResponse> call({
    String? imageName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get a hero image from the server by name',
      apiUrl: '${KMartAPIsGroup.baseUrl}/image/$imageName',
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

class LoginApiCall {
  static Future<ApiCallResponse> call({
    String? moblienumber = '',
    String? pin = '',
  }) async {
    final ffApiRequestBody = '''
{
  "mobile_number": "$moblienumber",
  "pin": "$pin"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'loginApi',
      apiUrl: 'http://192.168.1.8:5000/login',
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

class GetheroimageCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getheroimage',
      apiUrl: 'http://192.168.1.6:5001/categories',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DemoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'demo',
      apiUrl: 'http://192.168.1.6:5001/images',
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
