// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetSearchResponse {
  List<CryptoCoin> get coins;
  List<Exchange> get exchanges;
  List<Category> get categories;
  List<Nft> get nfts;
  List<dynamic> get icons;

  /// Create a copy of GetSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetSearchResponseCopyWith<GetSearchResponse> get copyWith =>
      _$GetSearchResponseCopyWithImpl<GetSearchResponse>(
          this as GetSearchResponse, _$identity);

  /// Serializes this GetSearchResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetSearchResponse &&
            const DeepCollectionEquality().equals(other.coins, coins) &&
            const DeepCollectionEquality().equals(other.exchanges, exchanges) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality().equals(other.nfts, nfts) &&
            const DeepCollectionEquality().equals(other.icons, icons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(coins),
      const DeepCollectionEquality().hash(exchanges),
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(nfts),
      const DeepCollectionEquality().hash(icons));

  @override
  String toString() {
    return 'GetSearchResponse(coins: $coins, exchanges: $exchanges, categories: $categories, nfts: $nfts, icons: $icons)';
  }
}

/// @nodoc
abstract mixin class $GetSearchResponseCopyWith<$Res> {
  factory $GetSearchResponseCopyWith(
          GetSearchResponse value, $Res Function(GetSearchResponse) _then) =
      _$GetSearchResponseCopyWithImpl;
  @useResult
  $Res call(
      {List<CryptoCoin> coins,
      List<Exchange> exchanges,
      List<Category> categories,
      List<Nft> nfts,
      List<dynamic> icons});
}

/// @nodoc
class _$GetSearchResponseCopyWithImpl<$Res>
    implements $GetSearchResponseCopyWith<$Res> {
  _$GetSearchResponseCopyWithImpl(this._self, this._then);

  final GetSearchResponse _self;
  final $Res Function(GetSearchResponse) _then;

  /// Create a copy of GetSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
    Object? exchanges = null,
    Object? categories = null,
    Object? nfts = null,
    Object? icons = null,
  }) {
    return _then(_self.copyWith(
      coins: null == coins
          ? _self.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<CryptoCoin>,
      exchanges: null == exchanges
          ? _self.exchanges
          : exchanges // ignore: cast_nullable_to_non_nullable
              as List<Exchange>,
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      nfts: null == nfts
          ? _self.nfts
          : nfts // ignore: cast_nullable_to_non_nullable
              as List<Nft>,
      icons: null == icons
          ? _self.icons
          : icons // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GetSearchResponse implements GetSearchResponse {
  const _GetSearchResponse(
      {required final List<CryptoCoin> coins,
      final List<Exchange> exchanges = const [],
      final List<Category> categories = const [],
      final List<Nft> nfts = const [],
      final List<dynamic> icons = const []})
      : _coins = coins,
        _exchanges = exchanges,
        _categories = categories,
        _nfts = nfts,
        _icons = icons;
  factory _GetSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$GetSearchResponseFromJson(json);

  final List<CryptoCoin> _coins;
  @override
  List<CryptoCoin> get coins {
    if (_coins is EqualUnmodifiableListView) return _coins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coins);
  }

  final List<Exchange> _exchanges;
  @override
  @JsonKey()
  List<Exchange> get exchanges {
    if (_exchanges is EqualUnmodifiableListView) return _exchanges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exchanges);
  }

  final List<Category> _categories;
  @override
  @JsonKey()
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<Nft> _nfts;
  @override
  @JsonKey()
  List<Nft> get nfts {
    if (_nfts is EqualUnmodifiableListView) return _nfts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nfts);
  }

  final List<dynamic> _icons;
  @override
  @JsonKey()
  List<dynamic> get icons {
    if (_icons is EqualUnmodifiableListView) return _icons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_icons);
  }

  /// Create a copy of GetSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetSearchResponseCopyWith<_GetSearchResponse> get copyWith =>
      __$GetSearchResponseCopyWithImpl<_GetSearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetSearchResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetSearchResponse &&
            const DeepCollectionEquality().equals(other._coins, _coins) &&
            const DeepCollectionEquality()
                .equals(other._exchanges, _exchanges) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._nfts, _nfts) &&
            const DeepCollectionEquality().equals(other._icons, _icons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_coins),
      const DeepCollectionEquality().hash(_exchanges),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_nfts),
      const DeepCollectionEquality().hash(_icons));

  @override
  String toString() {
    return 'GetSearchResponse(coins: $coins, exchanges: $exchanges, categories: $categories, nfts: $nfts, icons: $icons)';
  }
}

/// @nodoc
abstract mixin class _$GetSearchResponseCopyWith<$Res>
    implements $GetSearchResponseCopyWith<$Res> {
  factory _$GetSearchResponseCopyWith(
          _GetSearchResponse value, $Res Function(_GetSearchResponse) _then) =
      __$GetSearchResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<CryptoCoin> coins,
      List<Exchange> exchanges,
      List<Category> categories,
      List<Nft> nfts,
      List<dynamic> icons});
}

/// @nodoc
class __$GetSearchResponseCopyWithImpl<$Res>
    implements _$GetSearchResponseCopyWith<$Res> {
  __$GetSearchResponseCopyWithImpl(this._self, this._then);

  final _GetSearchResponse _self;
  final $Res Function(_GetSearchResponse) _then;

  /// Create a copy of GetSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? coins = null,
    Object? exchanges = null,
    Object? categories = null,
    Object? nfts = null,
    Object? icons = null,
  }) {
    return _then(_GetSearchResponse(
      coins: null == coins
          ? _self._coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<CryptoCoin>,
      exchanges: null == exchanges
          ? _self._exchanges
          : exchanges // ignore: cast_nullable_to_non_nullable
              as List<Exchange>,
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      nfts: null == nfts
          ? _self._nfts
          : nfts // ignore: cast_nullable_to_non_nullable
              as List<Nft>,
      icons: null == icons
          ? _self._icons
          : icons // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
mixin _$CryptoCoin {
  String get id;
  String get name;
  @JsonKey(name: 'api_symbol')
  String get apiSymbol;
  String get symbol;
  @JsonKey(name: 'market_cap_rank')
  int get marketCapRank;
  String get thumb;
  String get large;

  /// Create a copy of CryptoCoin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CryptoCoinCopyWith<CryptoCoin> get copyWith =>
      _$CryptoCoinCopyWithImpl<CryptoCoin>(this as CryptoCoin, _$identity);

  /// Serializes this CryptoCoin to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CryptoCoin &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.apiSymbol, apiSymbol) ||
                other.apiSymbol == apiSymbol) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.marketCapRank, marketCapRank) ||
                other.marketCapRank == marketCapRank) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, apiSymbol, symbol, marketCapRank, thumb, large);

  @override
  String toString() {
    return 'CryptoCoin(id: $id, name: $name, apiSymbol: $apiSymbol, symbol: $symbol, marketCapRank: $marketCapRank, thumb: $thumb, large: $large)';
  }
}

/// @nodoc
abstract mixin class $CryptoCoinCopyWith<$Res> {
  factory $CryptoCoinCopyWith(
          CryptoCoin value, $Res Function(CryptoCoin) _then) =
      _$CryptoCoinCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'api_symbol') String apiSymbol,
      String symbol,
      @JsonKey(name: 'market_cap_rank') int marketCapRank,
      String thumb,
      String large});
}

/// @nodoc
class _$CryptoCoinCopyWithImpl<$Res> implements $CryptoCoinCopyWith<$Res> {
  _$CryptoCoinCopyWithImpl(this._self, this._then);

  final CryptoCoin _self;
  final $Res Function(CryptoCoin) _then;

  /// Create a copy of CryptoCoin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? apiSymbol = null,
    Object? symbol = null,
    Object? marketCapRank = null,
    Object? thumb = null,
    Object? large = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      apiSymbol: null == apiSymbol
          ? _self.apiSymbol
          : apiSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _self.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      marketCapRank: null == marketCapRank
          ? _self.marketCapRank
          : marketCapRank // ignore: cast_nullable_to_non_nullable
              as int,
      thumb: null == thumb
          ? _self.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _self.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CryptoCoin implements CryptoCoin {
  const _CryptoCoin(
      {required this.id,
      required this.name,
      @JsonKey(name: 'api_symbol') required this.apiSymbol,
      required this.symbol,
      @JsonKey(name: 'market_cap_rank') required this.marketCapRank,
      required this.thumb,
      required this.large});
  factory _CryptoCoin.fromJson(Map<String, dynamic> json) =>
      _$CryptoCoinFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'api_symbol')
  final String apiSymbol;
  @override
  final String symbol;
  @override
  @JsonKey(name: 'market_cap_rank')
  final int marketCapRank;
  @override
  final String thumb;
  @override
  final String large;

  /// Create a copy of CryptoCoin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CryptoCoinCopyWith<_CryptoCoin> get copyWith =>
      __$CryptoCoinCopyWithImpl<_CryptoCoin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CryptoCoinToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CryptoCoin &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.apiSymbol, apiSymbol) ||
                other.apiSymbol == apiSymbol) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.marketCapRank, marketCapRank) ||
                other.marketCapRank == marketCapRank) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, apiSymbol, symbol, marketCapRank, thumb, large);

  @override
  String toString() {
    return 'CryptoCoin(id: $id, name: $name, apiSymbol: $apiSymbol, symbol: $symbol, marketCapRank: $marketCapRank, thumb: $thumb, large: $large)';
  }
}

/// @nodoc
abstract mixin class _$CryptoCoinCopyWith<$Res>
    implements $CryptoCoinCopyWith<$Res> {
  factory _$CryptoCoinCopyWith(
          _CryptoCoin value, $Res Function(_CryptoCoin) _then) =
      __$CryptoCoinCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'api_symbol') String apiSymbol,
      String symbol,
      @JsonKey(name: 'market_cap_rank') int marketCapRank,
      String thumb,
      String large});
}

/// @nodoc
class __$CryptoCoinCopyWithImpl<$Res> implements _$CryptoCoinCopyWith<$Res> {
  __$CryptoCoinCopyWithImpl(this._self, this._then);

  final _CryptoCoin _self;
  final $Res Function(_CryptoCoin) _then;

  /// Create a copy of CryptoCoin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? apiSymbol = null,
    Object? symbol = null,
    Object? marketCapRank = null,
    Object? thumb = null,
    Object? large = null,
  }) {
    return _then(_CryptoCoin(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      apiSymbol: null == apiSymbol
          ? _self.apiSymbol
          : apiSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _self.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      marketCapRank: null == marketCapRank
          ? _self.marketCapRank
          : marketCapRank // ignore: cast_nullable_to_non_nullable
              as int,
      thumb: null == thumb
          ? _self.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _self.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Exchange {
  String get id;
  String get name;
  @JsonKey(name: 'market_type')
  String get marketType;
  String get thumb;
  String get large;

  /// Create a copy of Exchange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExchangeCopyWith<Exchange> get copyWith =>
      _$ExchangeCopyWithImpl<Exchange>(this as Exchange, _$identity);

  /// Serializes this Exchange to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Exchange &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.marketType, marketType) ||
                other.marketType == marketType) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, marketType, thumb, large);

  @override
  String toString() {
    return 'Exchange(id: $id, name: $name, marketType: $marketType, thumb: $thumb, large: $large)';
  }
}

/// @nodoc
abstract mixin class $ExchangeCopyWith<$Res> {
  factory $ExchangeCopyWith(Exchange value, $Res Function(Exchange) _then) =
      _$ExchangeCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'market_type') String marketType,
      String thumb,
      String large});
}

/// @nodoc
class _$ExchangeCopyWithImpl<$Res> implements $ExchangeCopyWith<$Res> {
  _$ExchangeCopyWithImpl(this._self, this._then);

  final Exchange _self;
  final $Res Function(Exchange) _then;

  /// Create a copy of Exchange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? marketType = null,
    Object? thumb = null,
    Object? large = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      marketType: null == marketType
          ? _self.marketType
          : marketType // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _self.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _self.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Exchange implements Exchange {
  const _Exchange(
      {required this.id,
      required this.name,
      @JsonKey(name: 'market_type') required this.marketType,
      required this.thumb,
      required this.large});
  factory _Exchange.fromJson(Map<String, dynamic> json) =>
      _$ExchangeFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'market_type')
  final String marketType;
  @override
  final String thumb;
  @override
  final String large;

  /// Create a copy of Exchange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExchangeCopyWith<_Exchange> get copyWith =>
      __$ExchangeCopyWithImpl<_Exchange>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExchangeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Exchange &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.marketType, marketType) ||
                other.marketType == marketType) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, marketType, thumb, large);

  @override
  String toString() {
    return 'Exchange(id: $id, name: $name, marketType: $marketType, thumb: $thumb, large: $large)';
  }
}

/// @nodoc
abstract mixin class _$ExchangeCopyWith<$Res>
    implements $ExchangeCopyWith<$Res> {
  factory _$ExchangeCopyWith(_Exchange value, $Res Function(_Exchange) _then) =
      __$ExchangeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'market_type') String marketType,
      String thumb,
      String large});
}

/// @nodoc
class __$ExchangeCopyWithImpl<$Res> implements _$ExchangeCopyWith<$Res> {
  __$ExchangeCopyWithImpl(this._self, this._then);

  final _Exchange _self;
  final $Res Function(_Exchange) _then;

  /// Create a copy of Exchange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? marketType = null,
    Object? thumb = null,
    Object? large = null,
  }) {
    return _then(_Exchange(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      marketType: null == marketType
          ? _self.marketType
          : marketType // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _self.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _self.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Category {
  String get id;
  String get name;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<Category> get copyWith =>
      _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Category &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'Category(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) =
      _$CategoryCopyWithImpl;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Category implements Category {
  const _Category({required this.id, required this.name});
  factory _Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  @override
  final String id;
  @override
  final String name;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Category &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'Category(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) =
      __$CategoryCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$CategoryCopyWithImpl<$Res> implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_Category(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Nft {
  String get id;
  String get name;
  String get thumb;
  String? get large;

  /// Create a copy of Nft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NftCopyWith<Nft> get copyWith =>
      _$NftCopyWithImpl<Nft>(this as Nft, _$identity);

  /// Serializes this Nft to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Nft &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, thumb, large);

  @override
  String toString() {
    return 'Nft(id: $id, name: $name, thumb: $thumb, large: $large)';
  }
}

/// @nodoc
abstract mixin class $NftCopyWith<$Res> {
  factory $NftCopyWith(Nft value, $Res Function(Nft) _then) = _$NftCopyWithImpl;
  @useResult
  $Res call({String id, String name, String thumb, String? large});
}

/// @nodoc
class _$NftCopyWithImpl<$Res> implements $NftCopyWith<$Res> {
  _$NftCopyWithImpl(this._self, this._then);

  final Nft _self;
  final $Res Function(Nft) _then;

  /// Create a copy of Nft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumb = null,
    Object? large = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _self.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      large: freezed == large
          ? _self.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Nft implements Nft {
  const _Nft(
      {required this.id, required this.name, required this.thumb, this.large});
  factory _Nft.fromJson(Map<String, dynamic> json) => _$NftFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String thumb;
  @override
  final String? large;

  /// Create a copy of Nft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NftCopyWith<_Nft> get copyWith =>
      __$NftCopyWithImpl<_Nft>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NftToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Nft &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, thumb, large);

  @override
  String toString() {
    return 'Nft(id: $id, name: $name, thumb: $thumb, large: $large)';
  }
}

/// @nodoc
abstract mixin class _$NftCopyWith<$Res> implements $NftCopyWith<$Res> {
  factory _$NftCopyWith(_Nft value, $Res Function(_Nft) _then) =
      __$NftCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name, String thumb, String? large});
}

/// @nodoc
class __$NftCopyWithImpl<$Res> implements _$NftCopyWith<$Res> {
  __$NftCopyWithImpl(this._self, this._then);

  final _Nft _self;
  final $Res Function(_Nft) _then;

  /// Create a copy of Nft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumb = null,
    Object? large = freezed,
  }) {
    return _then(_Nft(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _self.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      large: freezed == large
          ? _self.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
