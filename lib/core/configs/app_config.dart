import 'package:flutter/foundation.dart';


class AppConfig {

  static const coingeckoApiUrl = kDebugMode
      ? 'https://api.coingecko.com/api'
      : 'https://pro-api.coingecko.com/api';

  static const coingeckoApiKey = 'a';
}