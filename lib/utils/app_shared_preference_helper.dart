
import 'package:invest_note/core/di/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferenceKey {
  static const String languageKey = 'languageKey';
  static const String themeModeKey = 'themeModeKey';
}

class AppSharedPreferenceHelper {
  AppSharedPreferenceHelper(this.prefs);
  
  final SharedPreferences prefs;


  static String getString(String key, String defaultValue) {
    return getIt<SharedPreferences>().getString(key) ?? defaultValue;
  }

  static setString(String key, String value) {
    getIt<SharedPreferences>().setString(key, value);
  }

  static int? getInt(String key) {
    return getIt<SharedPreferences>().getInt(key);
  }

  static setInt(String key, int value) {
    getIt<SharedPreferences>().setInt(key, value);
  }

  static bool? getBool(String key) {
    return getIt<SharedPreferences>().getBool(key);
  }

  static setBool(String key, bool value) {
    getIt<SharedPreferences>().setBool(key, value);
  }
}