import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:invest_note/core/configs/debug_config.dart';

abstract class BaseHttpService {
  late Dio _dio;

  BaseHttpService() {
    _dio = Dio(
      getBaseOptions(),
    );

    if (kDebugMode && httpLogOn) {
      _dio.interceptors.add(LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        requestHeader: true,
      ));
    }
  }

  BaseOptions getBaseOptions();

  Future<Response<T>> get<T>(
      String path, {
        Map<String, dynamic>? queryParameters,
        T Function(Map<String, dynamic> json)? fromJson,
        Options? options,
      }) async {
    final res = await _dio.get(path, queryParameters: queryParameters, options: options);

    final parsedData = fromJson != null
        ? fromJson(res.data)
        : res.data;

    return Response<T>(
      data: parsedData,
      requestOptions: res.requestOptions,
      statusCode: res.statusCode,
      statusMessage: res.statusMessage,
      headers: res.headers,
      isRedirect: res.isRedirect,
      redirects: res.redirects,
      extra: res.extra,
    );
  }
}