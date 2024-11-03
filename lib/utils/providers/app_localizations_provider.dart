import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'app_localizations_provider.g.dart';

@Riverpod(keepAlive: true)
// ignore: deprecated_member_use_from_same_package
AppLocalizations appLocalizations(AppLocalizationsRef ref) {
  const Locale locale = Locale('en', 'US');
  ref.state = lookupAppLocalizations(
      basicLocaleListResolution([locale], AppLocalizations.supportedLocales));
  final observer = _LocaleObserver((locales) {
    ref.state = lookupAppLocalizations(
        basicLocaleListResolution([locale], AppLocalizations.supportedLocales));
  });
  final binding = WidgetsBinding.instance;
  binding.addObserver(observer);
  ref.onDispose(() => binding.removeObserver(observer));
  return ref.state;
}

class _LocaleObserver extends WidgetsBindingObserver {
  _LocaleObserver(this._didChangeLocales);
  final void Function(List<Locale>? locales) _didChangeLocales;
  @override
  void didChangeLocales(List<Locale>? locales) {
    _didChangeLocales(locales);
  }
}
