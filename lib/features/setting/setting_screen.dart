import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invest_note/core/bloc/app_setting/app_setting_bloc.dart';
import 'package:invest_note/core/constants/app_locale.dart';
import 'package:invest_note/core/constants/app_string.s.dart';
import 'package:invest_note/shared/widgets/shared_rounded_box.dart';
import 'package:invest_note/shared/widgets/shared_text.dart';

part 'widgets/setting_language_switcher.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppSettingBloc, AppSettingState>(
        builder: (context, state) {
      if (state is AppSettingLoaded) {
        return Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              // Add your setting widgets here
              // Example:
              // _SettingThemeWidget(),
              // const SizedBox(height: 12.0),
              // _SettingNotifyWidget(),
              // const SizedBox(height: 12.0),
              // _SettingNotificationDaysWidget(),
              const SizedBox(height: 12.0),
              _SettingLanguageWidget(
                languageCode: state.languageCode,
              ),
            ],
          ),
        );
      }

      return Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
