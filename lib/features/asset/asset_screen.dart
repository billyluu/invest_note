import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invest_note/core/di/get_it.dart';
import 'package:invest_note/core/service/base/base_http_service.dart';
import 'package:invest_note/core/service/coingecko_service.dart';
import 'package:invest_note/features/asset/asset_bloc.dart';

class AssetScreen extends StatelessWidget {
  const AssetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AssetBloc(getIt<CoingeckoService>()),
      child: BlocBuilder<AssetBloc, AssetState>(builder: (context, state) {
        switch(state) {
          case AssetLoading():
            return Center(child: CircularProgressIndicator());
          case AssetInitial():
            return _Main();
          case AssetSearchSuccess():
            return Container();
        }
        return Container();
      },),
    );
  }
}

class _Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

}
