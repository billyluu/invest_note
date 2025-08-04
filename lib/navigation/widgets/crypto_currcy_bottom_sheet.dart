import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invest_note/core/service/coingecko_service.dart';
import 'package:invest_note/features/asset/asset_bloc.dart';

class CryptoCurrencyBottomSheet extends StatelessWidget {
  const CryptoCurrencyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AssetBloc(CoingeckoService()),
      child: BlocBuilder<AssetBloc, AssetState>(
        builder: (context, state) {
          print('#### AssetState: $state');
          if (state is AssetLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is AssetSearchSuccess) {
            return Column(
              children: [
                _SearchBar(),
                Expanded(
                  child: _CryptoCurrencyList(
                    state: state,
                  ),
                ),
              ],
            );
          }
          return Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _SearchBar(),
                Expanded(
                  child: Center(
                    child: Text(
                      'No assets found',
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
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
  });

  final AssetSearchSuccess state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: state.assets.length,
      itemBuilder: (context, index) {
        final coin = state.assets[index];
        return ListTile(
          leading: Image.network(coin.thumb),
          title: Text(coin.name),
          subtitle: Text(coin.symbol.toUpperCase()),
        );
      },
    );
  }
}
