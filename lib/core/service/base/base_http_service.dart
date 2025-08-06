import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:invest_note/core/configs/debug_config.dart';

class HttpService {
  late Dio _dio;
  final BaseOptions baseOptions;

  HttpService(this.baseOptions) {
    _dio = Dio(
      baseOptions,
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

  Future<HttpResult<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    required T Function(Map<String, dynamic> json) fromJson,
    Options? options,
  }) async {
    try {
      final res = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      return HttpSuccess<T>(fromJson(res.data));
    } catch (e) {
      return HttpFailure<T>(
        'Failed to parse response: ${e.toString()}',
        statusCode: (e is DioException) ? e.response?.statusCode : null,
      );
    }
  }
}

sealed class HttpResult<T> {
  const HttpResult();
}

class HttpSuccess<T> extends HttpResult<T> {
  final T data;

  HttpSuccess(this.data);

  get props => [data];
}

class HttpFailure<T> extends HttpResult<T> {
  final String message;
  final int? statusCode;

  HttpFailure(this.message, {this.statusCode});
}
