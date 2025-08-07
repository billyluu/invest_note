import 'dart:math';

class AppKeyGenerator {
  static List<int> generateRandomHiveAesKey() {
    final rand = Random.secure(); // cryptographically secure
    return List<int>.generate(32, (_) => rand.nextInt(256));
  }
}
