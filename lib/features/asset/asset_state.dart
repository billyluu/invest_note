part of 'asset_bloc.dart';

@immutable
sealed class AssetState {}

final class AssetLoading extends AssetState {}

final class AssetInitial extends AssetState {}

final class AssetSearchSuccess extends AssetState {
  final List<CryptoCoin> assets;

  AssetSearchSuccess(this.assets);

  get props => [assets];
}
