import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:invest_note/core/configs/app_config.dart';
import 'package:invest_note/core/service/base/base_http_service.dart';
import 'package:invest_note/core/service/coingecko_service.dart';

GetIt getIt = GetIt.instance;

void setupGetIt() {
  // Register your services, repositories, and other dependencies here
  // Example:
  // getIt.registerLazySingleton<YourService>(() => YourServiceImplementation());

  getIt.registerLazySingleton<HttpService>(() => HttpService(
        BaseOptions(
          baseUrl: AppConfig.coingeckoApiUrl,
          headers: {
            'accept': 'application/json',
            if (!kDebugMode) 'x-cg-pro-api-key': AppConfig.coingeckoApiKey,
          },
        ),
      ));

  getIt.registerLazySingleton<CoingeckoService>(
      () => CoingeckoService(getIt<HttpService>()));


}
