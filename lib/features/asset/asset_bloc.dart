import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invest_note/core/response/get_search_response.dart';
import 'package:invest_note/core/service/base/base_http_service.dart';
import 'package:invest_note/core/service/coingecko_service.dart';

part 'asset_event.dart';
part 'asset_state.dart';

class AssetBloc extends Bloc<AssetEvent, AssetState> {
  final CoingeckoService coingeckoService;

  AssetBloc(this.coingeckoService) : super(AssetInitial()) {
    on<AssetSearchEvent>((event, emit) async {
      emit(AssetLoading());
      try {
        final result = await coingeckoService.search(event.query);
        if (result is HttpSuccess<GetSearchResponse>) {
          emit(AssetSearchSuccess(result.data.coins));
        } else {
          emit(AssetInitial());
        }
      } catch (e) {
        print('❌ 搜尋錯誤: $e');
        emit(AssetInitial());
      }
    });
  }
}
