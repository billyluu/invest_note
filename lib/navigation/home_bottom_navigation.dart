import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invest_note/core/bloc/app_setting/app_setting_bloc.dart';
import 'package:invest_note/core/constants/app_string.s.dart';
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
            children: [
              AssetScreen(),
              BlocProvider(
                create: (context) => context.read<AppSettingBloc>()..add(AppSettingLoadEvent()),
                child: SettingScreen(),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (index) => context.read<NavCubit>().updateIndex(index),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet),
                label: AppString.bottomNavBarAsset.getI18n(context),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: AppString.bottomNavBarSetting.getI18n(context),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            mini: true,
            shape: const CircleBorder(),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const CryptoCurrencyBottomSheet();
                },
              );
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
