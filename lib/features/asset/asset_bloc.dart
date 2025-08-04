import 'package:bloc/bloc.dart';
import 'package:invest_note/core/response/get_search_response.dart';
import 'package:invest_note/core/service/base/base_http_service.dart';
import 'package:invest_note/core/service/coingecko_service.dart';
import 'package:meta/meta.dart';

part 'asset_event.dart';
part 'asset_state.dart';

class AssetBloc extends Bloc<AssetEvent, AssetState> {
  final CoingeckoService coingeckoService;

  AssetBloc(this.coingeckoService) : super(AssetLoading()) {
    load();

    on<AssetSearchEvent>((event, emit) async {
      try {
        final result = await coingeckoService.search(event.query);
        if (result is HttpSuccess<GetSearchResponse>) {
          print('#### value: ${result.data}');
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

  void load() {
    emit(AssetInitial());
  }
}
