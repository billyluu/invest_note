part of 'app_setting_bloc.dart';

@immutable
sealed class AppSettingEvent {}

final class AppSettingLoadEvent extends AppSettingEvent {
  AppSettingLoadEvent();
}

final class AppSettingUpdateLanguageEvent extends AppSettingEvent {
  final AppLocale appLocale;

  AppSettingUpdateLanguageEvent(this.appLocale);
}
