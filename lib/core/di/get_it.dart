import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:invest_note/core/configs/app_config.dart';
import 'package:invest_note/core/service/base/base_http_service.dart';
import 'package:invest_note/core/service/coingecko_service.dart';
import 'package:invest_note/utils/app_key_generator.dart';
import 'package:invest_note/utils/app_shared_preference_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Register your services, repositories, and other dependencies here
  // Example:
  // getIt.registerLazySingleton<YourService>(() => YourServiceImplementation());

  getIt.registerLazySingleton<HttpService>(
    () => HttpService(
      BaseOptions(
        baseUrl: AppConfig.coingeckoApiUrl,
        headers: {
          'accept': 'application/json',
          if (!kDebugMode) 'x-cg-pro-api-key': AppConfig.coingeckoApiKey,
        },
      ),
    ),
  );

  getIt.registerLazySingleton<CoingeckoService>(
    () => CoingeckoService(
      getIt<HttpService>(),
    ),
  );

  getIt.registerSingleton<SharedPreferences>(
    await SharedPreferences.getInstance(),
  );

  final uuid = Uuid().v4();
  AppSharedPreferenceHelper.setString(AppSharedPreferenceKey.uuidKey, uuid);
  final hiveAesKey = jsonEncode(AppKeyGenerator.generateRandomHiveAesKey());
  AppSharedPreferenceHelper.setString(AppSharedPreferenceKey.hiveAesKey, hiveAesKey);

  final hiveKey = List<int>.from(
    jsonDecode(
      hiveAesKey,
    ),
  );
  getIt.registerSingleton<BoxCollection>(
    await BoxCollection.open(
      'InvestNote', // Name of your database
      {'assets'}, // Names of your boxes
      path: './',
      // Path where to store your boxes (Only used in Flutter / Dart IO)
      key: kDebugMode
          ? null
          : HiveAesCipher(
              hiveKey), // Key to encrypt your boxes (Only used in Flutter / Dart IO)
    ),
  );
}
