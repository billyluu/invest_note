part of 'asset_bloc.dart';

@immutable
sealed class AssetEvent {}

final class AssetSearchEvent extends AssetEvent {
  final String query;

  AssetSearchEvent(this.query);
}