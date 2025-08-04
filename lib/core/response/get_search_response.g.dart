// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetSearchResponse _$GetSearchResponseFromJson(Map<String, dynamic> json) =>
    _GetSearchResponse(
      coins: (json['coins'] as List<dynamic>)
          .map((e) => CryptoCoin.fromJson(e as Map<String, dynamic>))
          .toList(),
      exchanges: (json['exchanges'] as List<dynamic>?)
              ?.map((e) => Exchange.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      nfts: (json['nfts'] as List<dynamic>?)
              ?.map((e) => Nft.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      icons: json['icons'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$GetSearchResponseToJson(_GetSearchResponse instance) =>
    <String, dynamic>{
      'coins': instance.coins,
      'exchanges': instance.exchanges,
      'categories': instance.categories,
      'nfts': instance.nfts,
      'icons': instance.icons,
    };

_CryptoCoin _$CryptoCoinFromJson(Map<String, dynamic> json) => _CryptoCoin(
      id: json['id'] as String,
      name: json['name'] as String,
      apiSymbol: json['api_symbol'] as String,
      symbol: json['symbol'] as String,
      marketCapRank: (json['market_cap_rank'] as num).toInt(),
      thumb: json['thumb'] as String,
      large: json['large'] as String,
    );

Map<String, dynamic> _$CryptoCoinToJson(_CryptoCoin instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'api_symbol': instance.apiSymbol,
      'symbol': instance.symbol,
      'market_cap_rank': instance.marketCapRank,
      'thumb': instance.thumb,
      'large': instance.large,
    };

_Exchange _$ExchangeFromJson(Map<String, dynamic> json) => _Exchange(
      id: json['id'] as String,
      name: json['name'] as String,
      marketType: json['market_type'] as String,
      thumb: json['thumb'] as String,
      large: json['large'] as String,
    );

Map<String, dynamic> _$ExchangeToJson(_Exchange instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'market_type': instance.marketType,
      'thumb': instance.thumb,
      'large': instance.large,
    };

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_Nft _$NftFromJson(Map<String, dynamic> json) => _Nft(
      id: json['id'] as String,
      name: json['name'] as String,
      thumb: json['thumb'] as String,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$NftToJson(_Nft instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumb': instance.thumb,
      'large': instance.large,
    };
