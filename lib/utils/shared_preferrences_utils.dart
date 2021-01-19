import 'package:flutter/material.dart' show Locale;
import 'package:miaid/generated/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences pref;
const String kLang = 'locale';

Future<void> initPreferences() async {
  pref = await SharedPreferences.getInstance();
}

Future<void> setLang(Locale locale) async {
  await pref.setString(kLang, locale.languageCode);
  await S.load(locale);
}

Locale get savedLocale => Locale(pref.getString(kLang) ?? 'en');
