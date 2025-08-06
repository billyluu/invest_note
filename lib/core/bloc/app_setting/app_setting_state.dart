part of 'app_setting_bloc.dart';

@immutable
sealed class AppSettingState {}

final class AppSettingLoading extends AppSettingState {}

final class AppSettingLoaded extends AppSettingState {
  final String languageCode;

  AppSettingLoaded(this.languageCode);

  get props => [languageCode];
}

