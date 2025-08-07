import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:invest_note/core/di/get_it.dart';
import 'package:invest_note/core/response/get_search_response.dart';
import 'package:invest_note/storage/app_storage.dart';
import 'package:invest_note/storage/models/asset_hive_model.dart';
import 'package:invest_note/utils/app_key_generator.dart';
import 'package:invest_note/utils/app_shared_preference_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() async {
    SharedPreferences.setMockInitialValues({}); // <== 重點
    await setupGetIt();
    final hiveAesKey = jsonEncode(AppKeyGenerator.generateRandomHiveAesKey());
    AppSharedPreferenceHelper.setString(AppSharedPreferenceKey.hiveAesKey, hiveAesKey);// 確保依賴注入已經完成
  });

  testWidgets('app storage I/O test', (WidgetTester widgetTester) async {
    final testBoxKey = AppStorage.assetsBox;
    final testObjectKey = 'testObjectKey';
    final testAssetHiveModel = AssetHiveModel(
      id: 'ethereum',
      name: 'Ethereum',
      symbol: 'ETH',
      apiSymbol: 'ethereum',
      marketCapRank: '2',
      thumb:
          'https://assets.coingecko.com/coins/images/279/thumb/ethereum.png"',
      large:
          'https://assets.coingecko.com/coins/images/279/large/ethereum.png"',
    );

    await AppStorage.put<AssetHiveModel>(testBoxKey, testObjectKey, testAssetHiveModel);

    final retrievedObject = await AppStorage.getAll<AssetHiveModel>(testBoxKey);
    print('#### retrievedObject: ${retrievedObject} ');
    final coin = CryptoCoin.fromJson(jsonDecode(retrievedObject as String));

    expect(coin, isA<CryptoCoin>());
  });
}
