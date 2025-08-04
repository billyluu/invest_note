enum AppApis {
  cryptocurrencyMap(
    url: '/v1/cryptocurrency/map',
  ),
  search(
    url: 'v3/search',
  ),
  ;

  const AppApis({
    required this.url,
  });

  final String url;
}
