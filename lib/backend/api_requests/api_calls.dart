import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchproductsCall {
  static Future<ApiCallResponse> call({
    String? queryString = '',
  }) async {
    final ffApiRequestBody = '''
{
  "search_query": "$queryString"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Searchproducts',
      apiUrl:
          'https://fqdfiyyvvxljwqrlcgow.supabase.co/rest/v1/rpc/search_products',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZxZGZpeXl2dnhsandxcmxjZ293Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg3NTg5MTIsImV4cCI6MjAyNDMzNDkxMn0._JA3m0lK2fl9BncUsQozEK-dhCFOtgk3YhmJmKymV5k',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZxZGZpeXl2dnhsandxcmxjZ293Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg3NTg5MTIsImV4cCI6MjAyNDMzNDkxMn0._JA3m0lK2fl9BncUsQozEK-dhCFOtgk3YhmJmKymV5k',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SampleapiCall {
  static Future<ApiCallResponse> call({
    int? vendorId,
  }) async {
    final ffApiRequestBody = '''
{
"vendor_id": $vendorId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sampleapi',
      apiUrl:
          'https://fqdfiyyvvxljwqrlcgow.supabase.co/rest/v1/rpc/get_distinct_categories',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZxZGZpeXl2dnhsandxcmxjZ293Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg3NTg5MTIsImV4cCI6MjAyNDMzNDkxMn0._JA3m0lK2fl9BncUsQozEK-dhCFOtgk3YhmJmKymV5k',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZxZGZpeXl2dnhsandxcmxjZ293Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg3NTg5MTIsImV4cCI6MjAyNDMzNDkxMn0._JA3m0lK2fl9BncUsQozEK-dhCFOtgk3YhmJmKymV5k',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FilterproductsbasedonshopidCall {
  static Future<ApiCallResponse> call({
    String? shopid = '',
    int? limit,
    int? offset,
    String? categoryId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'filterproductsbasedonshopid',
      apiUrl:
          'https://fqdfiyyvvxljwqrlcgow.supabase.co/rest/v1/products?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZxZGZpeXl2dnhsandxcmxjZ293Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg3NTg5MTIsImV4cCI6MjAyNDMzNDkxMn0._JA3m0lK2fl9BncUsQozEK-dhCFOtgk3YhmJmKymV5k',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZxZGZpeXl2dnhsandxcmxjZ293Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg3NTg5MTIsImV4cCI6MjAyNDMzNDkxMn0._JA3m0lK2fl9BncUsQozEK-dhCFOtgk3YhmJmKymV5k',
      },
      params: {
        'shop_id': shopid,
        'category_id': categoryId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
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
