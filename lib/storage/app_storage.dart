import 'package:hive/hive.dart';
import 'package:invest_note/core/di/get_it.dart';

class AppStorage {
  static const assetsBox = 'assets';

  static Future<void> put<T>(String boxName, String key, T object) async {
    final box = await getIt<BoxCollection>().openBox<T>(boxName);
    print('#### put box: ${box.name}, object: ${object.toString()}');
    box.put(key, object);
  }

  static Future<Map<String, dynamic>> getAll<T>(String boxName) async {
    final box = await getIt<BoxCollection>().openBox<T>(boxName);
    // final allValues = await box.getAllValues();
    // print('#### ${allValues.length}');

    return {};
  }
}
