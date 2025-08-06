import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invest_note/core/constants/app_locale.dart';
import 'package:invest_note/utils/app_shared_preference_helper.dart';

part 'app_setting_event.dart';

part 'app_setting_state.dart';

class AppSettingBloc extends Bloc<AppSettingEvent, AppSettingState> {
  AppSettingBloc() : super(AppSettingLoading()) {
    on<AppSettingLoadEvent>(
      (event, emit) => loadSettings(emit),
    );
    on<AppSettingUpdateLanguageEvent>(
      (event, emit) => updateLanguage(event.appLocale, emit),
    );
  }

  void loadSettings(Emitter<AppSettingState> emit) {
    final language = AppSharedPreferenceHelper.getString(
      AppSharedPreferenceKey.languageKey,
      AppLocale.zhTW.languageCode,
    );

    emit(AppSettingLoaded(language));
  }

  void updateLanguage(AppLocale locale, Emitter<AppSettingState> emit) {
    AppSharedPreferenceHelper.setString(
      AppSharedPreferenceKey.languageKey,
      locale.languageCode,
    );
    emit(AppSettingLoaded(locale.languageCode));
  }
}
