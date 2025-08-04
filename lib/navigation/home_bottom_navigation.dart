import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invest_note/core/service/coingecko_service.dart';
import 'package:invest_note/features/asset/asset_bloc.dart';
import 'package:invest_note/features/asset/asset_screen.dart';
import 'package:invest_note/features/setting/setting_screen.dart';
import 'package:invest_note/navigation/bloc/nav_cubit.dart';
import 'package:invest_note/navigation/widgets/crypto_currcy_bottom_sheet.dart';

class HomeBottomNavigation extends StatelessWidget {
  const HomeBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit, int>(
      builder: (context, index) {
        return Scaffold(
          body: IndexedStack(
            index: index,
            children: const [
              AssetScreen(),
              SettingScreen(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (index) => context.read<NavCubit>().updateIndex(index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet),
                label: 'Assets',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            mini: true,
            shape: const CircleBorder(),
            onPressed: () {
              showModalBottomSheet(context: context, builder: (_) {
                return const CryptoCurrencyBottomSheet();
              });
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
