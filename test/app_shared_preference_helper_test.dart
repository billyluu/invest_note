
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:invest_note/core/di/get_it.dart';
import 'package:invest_note/utils/app_shared_preference_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUpAll(() async {
    SharedPreferences.setMockInitialValues({}); // <== 重點
    await setupGetIt(); // 確保依賴注入已經完成
  });

  testWidgets('AppSharedPreferenceHelper I/O test', (WidgetTester tester) async {
    // Arrange
    const String tesStr = 'testStr';
    const String testValue = 'testValue';

    const String testBool = 'testBool';
    const bool testBoolValue = true;

    const String testInt = 'testInt';
    const int testIntValue = 42;




    AppSharedPreferenceHelper.setString(tesStr, testValue);
    expect(AppSharedPreferenceHelper.getString(tesStr, ''), testValue);

    AppSharedPreferenceHelper.setString(tesStr, '');
    expect(AppSharedPreferenceHelper.getString(tesStr, ''), '');

    AppSharedPreferenceHelper.setBool(testBool, testBoolValue);
    expect(AppSharedPreferenceHelper.getBool(testBool), testBoolValue);



    AppSharedPreferenceHelper.setInt(testInt, testIntValue);
    expect(AppSharedPreferenceHelper.getInt(testInt), testIntValue);
  });
}