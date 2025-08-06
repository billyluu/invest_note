import 'package:invest_note/core/constants/app_apis.dart';
import 'package:invest_note/core/response/get_search_response.dart';
import 'package:invest_note/core/service/base/base_http_service.dart';

class CoingeckoService {
  final HttpService httpService;

  CoingeckoService(this.httpService);

  Future<HttpResult<GetSearchResponse>> search(String query) async {
    final response = await httpService.get<GetSearchResponse>(
      AppApis.search.url,
      queryParameters: {
        'query': query,
      },
      fromJson: GetSearchResponse.fromJson,
    );
    return response;
  }
}
