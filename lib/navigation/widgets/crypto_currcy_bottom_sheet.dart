import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invest_note/core/response/get_search_response.dart';
import 'package:invest_note/core/service/coingecko_service.dart';
import 'package:invest_note/features/asset/asset_bloc.dart';

import '../../core/service/base/base_http_service.dart';

class CryptoCurrencyBottomSheet extends StatefulWidget {
  const CryptoCurrencyBottomSheet({super.key});

  @override
  State<StatefulWidget> createState() => _CryptoCurrencyBottomSheetState();
}

class _CryptoCurrencyBottomSheetState extends State<CryptoCurrencyBottomSheet> {
  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AssetBloc(CoingeckoService(
        HttpService(BaseOptions(
          baseUrl: CoingeckoService.host,
          headers: {
            'accept': 'application/json',
            if (!kDebugMode) 'x-cg-pro-api-key': CoingeckoService.apiKey,
          },
        )),
      )),
      child: BlocBuilder<AssetBloc, AssetState>(
        builder: (context, state) {
          if (state is AssetSearchSuccess) {
            return _Main(
              state: state,
              textEditingController: _textEditingController,
              onTap: (cryptoCoin) {

              },
            );
          } else if (state is AssetInitial) {
            return _Main(
              state: AssetSearchSuccess([]),
              textEditingController: _textEditingController,
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class _Main extends StatelessWidget {
  const _Main({
    required this.state,
    required this.textEditingController,
    this.onTap,
  });

  final AssetSearchSuccess state;
  final TextEditingController textEditingController;
  final Function(CryptoCoin cryptoCoin)? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _SearchBar(
            textEditingController: textEditingController,
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: _CryptoCurrencyList(
              state: state,
              onTap: onTap,
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchBar extends StatefulWidget {
  const _SearchBar({
    required this.textEditingController,
  });

  final TextEditingController textEditingController;

  @override
  State<StatefulWidget> createState() => _SearchBarState();
}

class _SearchBarState extends State<_SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: widget.textEditingController,
        decoration: InputDecoration(
          hintText: '輸入虛擬貨幣名稱或代號',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          prefixIcon: Icon(Icons.search),
        ),
        onSubmitted: (query) {
          context.read<AssetBloc>().add(AssetSearchEvent(query));
        },
      ),
    );
  }
}

class _CryptoCurrencyList extends StatelessWidget {
  const _CryptoCurrencyList({
    required this.state,
    required this.onTap,
  });

  final AssetSearchSuccess state;
  final Function(CryptoCoin cryptoCoin)? onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: state.assets.length,
      itemBuilder: (context, index) {
        final coin = state.assets[index];
        return GestureDetector(
          onTap: onTap?.call(coin),
          child: ListTile(
            leading: Image.network(coin.thumb),
            title: Text(coin.name),
            subtitle: Text(coin.symbol.toUpperCase()),
          ),
        );
      },
    );
  }
}
