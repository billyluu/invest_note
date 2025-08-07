import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class AssetHiveModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String symbol;

  @HiveField(3)
  final String apiSymbol;

  @HiveField(4)
  final String marketCapRank;

  @HiveField(4)
  final String thumb;

  @HiveField(5)
  final String large;

  AssetHiveModel({
    required this.id,
    required this.name,
    required this.symbol,
    required this.apiSymbol,
    required this.marketCapRank,
    required this.thumb,
    required this.large,
  });

  @override
  String toString() => {
    'id': id,
    'name': name,
    'symbol': symbol,
    'apiSymbol': apiSymbol,
    'marketCapRank': marketCapRank,
    'thumb': thumb,
    'large': large,
  }.toString();
}
