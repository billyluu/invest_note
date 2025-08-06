part of '../setting_screen.dart';

class _SettingLanguageWidget extends StatelessWidget {
  const _SettingLanguageWidget({
    required this.languageCode,
  });

  final String languageCode;

  List<DropdownMenuItem<AppLocale>> getLanguageItems(BuildContext context) =>
      AppLocale.values
          .map((element) => DropdownMenuItem<AppLocale>(
              value: element,
              child: SharedText.i18n(
                element.appString,
                style: CommonTextStyle.textStyle(
                    color: Theme.of(context).colorScheme.onTertiary),
              )))
          .toList();

  @override
  Widget build(BuildContext context) {
    return SharedRoundedBox(
      background: Theme.of(context).colorScheme.tertiary,
      child: Row(
        children: [
          SharedText.i18n(
            AppString.settingScreenLanguage,
            style: CommonTextStyle.textStyle(
                color: Theme.of(context).colorScheme.onTertiary),
          ),
          const SizedBox(width: 24.0),
          DropdownButton<AppLocale>(
            dropdownColor: Theme.of(context).colorScheme.tertiary,
            value: AppLocale.fromLanguageCode(languageCode),
            items: getLanguageItems(context),
            onChanged: (appLocale) {
              if (appLocale != null) {
                context.read<AppSettingBloc>().add(
                    AppSettingUpdateLanguageEvent(
                        AppLocale.fromLanguageCode(appLocale.languageCode)));
              }
            },
          ),
        ],
      ),
    );
  }
}
