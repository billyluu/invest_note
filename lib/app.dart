import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:invest_note/core/bloc/app_setting/app_setting_bloc.dart';
import 'package:invest_note/core/constants/app_locale.dart';
import 'package:invest_note/core/constants/app_localizations.dart';
import 'package:invest_note/navigation/bloc/nav_cubit.dart';
import 'package:invest_note/navigation/home_bottom_navigation.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavCubit>(create: (_) => NavCubit()),
        BlocProvider<AppSettingBloc>(create: (_) => AppSettingBloc()),
      ],
      child: BlocBuilder<AppSettingBloc, AppSettingState>(
        builder: (context, state) {
          return MaterialApp(
            supportedLocales: AppLocale.values.map((e) => e.getLocale()),
            locale: state is AppSettingLoaded
                ? AppLocale.fromLanguageCode(state.languageCode).getLocale()
                : AppLocale.zhTW.getLocale(),
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: HomeBottomNavigation(),
          );
        },
      ),
    );
  }
}
