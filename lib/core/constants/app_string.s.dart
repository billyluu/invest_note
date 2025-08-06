// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:invest_note/core/constants/app_localizations.dart';


enum AppString {
  appName(key: 'app_name'),
  commonDelete(key: 'common_delete'),
  commonSend(key: 'common_send'),
  commonClose(key: 'common_close'),
  commonConfirm(key: 'common_confirm'),
  commonCancel(key: 'common_cancel'),
  commonRetry(key: 'common_retry'),
  commonEmpty(key: 'common_empty'),
  bottomNavBarHome(key: 'bottomNavBar_home'),
  bottomNavBarSetting(key: 'bottomNavBar_setting'),
  settingScreenThemeMode(key: 'settingScreen_themeMode'),
  settingScreenNotificationSwitch(key: 'settingScreen_notificationSwitch'),
  settingScreenNotificationDays(key: 'settingScreen_notificationDays'),
  settingScreenLanguage(key: 'settingScreen_language'),
  errorSomethingWentWrong(key: 'error_something_went_wrong'),
  ;

  const AppString({ required this.key });
  final String key;

  String getI18n(BuildContext context, [List<String>? args]) {
    return AppLocalizations.of(context).translate(key, args);
  }
}
