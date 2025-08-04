import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:invest_note/core/constants/app_apis.dart';
import 'package:invest_note/core/response/get_search_response.dart';
import 'package:invest_note/core/service/base/base_http_service.dart';

class CoingeckoService extends BaseHttpService {
  static const String host = kDebugMode ? 'https://api.coingecko.com/api/' : 'https://pro-api.coingecko.com/api';
  static const apiKey = 'CG-av1s9B8XA8URpUvW3VJ8AEqP';

  Future<Response<GetSearchResponse>> search(String query) async =>
      get<GetSearchResponse>(
        AppApis.search.url,
        queryParameters: {
          'query': query,
        },
        fromJson: GetSearchResponse.fromJson,
      );

  @override
  BaseOptions getBaseOptions() => BaseOptions(
    baseUrl: host,
    headers: {
      'accept': 'application/json',
      if (!kDebugMode) 'x-cg-pro-api-key': apiKey,
    },
  );
}
