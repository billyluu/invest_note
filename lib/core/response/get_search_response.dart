
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_search_response.freezed.dart';
part 'get_search_response.g.dart';

@freezed
abstract class GetSearchResponse with _$GetSearchResponse {
  const factory GetSearchResponse({
    required List<CryptoCoin> coins,
    @Default([]) List<Exchange> exchanges,
    @Default([]) List<Category> categories,
    @Default([]) List<Nft> nfts,
    @Default([]) List<dynamic> icons,
  }) = _GetSearchResponse;

  factory GetSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$GetSearchResponseFromJson(json);
}

@freezed
abstract class CryptoCoin with _$CryptoCoin {
  const factory CryptoCoin({
    required String id,
    required String name,
    @JsonKey(name: 'api_symbol') required String apiSymbol,
    required String symbol,
    @JsonKey(name: 'market_cap_rank') required int marketCapRank,
    required String thumb,
    required String large,
  }) = _CryptoCoin;

  factory CryptoCoin.fromJson(Map<String, dynamic> json) =>
      _$CryptoCoinFromJson(json);
}

@freezed
abstract class Exchange with _$Exchange {
  const factory Exchange({
    required String id,
    required String name,
    @JsonKey(name: 'market_type') required String marketType,
    required String thumb,
    required String large,
  }) = _Exchange;

  factory Exchange.fromJson(Map<String, dynamic> json) =>
      _$ExchangeFromJson(json);
}

@freezed
abstract class Category with _$Category {
  const factory Category({
    required String id,
    required String name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
abstract class Nft with _$Nft {
  const factory Nft({
    required String id,
    required String name,
    required String thumb,
    String? large,
  }) = _Nft;

  factory Nft.fromJson(Map<String, dynamic> json) => _$NftFromJson(json);
}