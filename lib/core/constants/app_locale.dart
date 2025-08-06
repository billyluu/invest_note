import 'package:flutter/material.dart';
import 'package:invest_note/core/constants/app_string.s.dart';

enum AppLocale {
  zhTW(
    languageCode: 'zh',
    countryCode: 'TW',
    appString: AppString.zhTw,
  ),
  enUs(
    languageCode: 'en',
    countryCode: 'US',
    appString: AppString.enUs,
  ),
  ;

  const AppLocale({
    required this.languageCode,
    required this.countryCode,
    required this.appString,
  });

  final String languageCode;
  final String countryCode;
  final AppString appString;

  Locale getLocale() {
    return Locale(languageCode, countryCode);
  }

  static AppLocale fromLanguageCode(String languageCode) {
    return AppLocale.values.firstWhere(
      (locale) => locale.languageCode == languageCode,
      orElse: () => AppLocale.zhTW,
    );
  }
}
