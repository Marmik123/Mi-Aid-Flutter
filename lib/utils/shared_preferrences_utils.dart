import 'package:shared_preferences/shared_preferences.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:flutter/material.dart' show Locale;

SharedPreferences pref;
const String kLang = 'locale';

initPreferences() async {
  pref = await SharedPreferences.getInstance();
}

setLang(Locale locale) async {
  await pref.setString(kLang, locale.languageCode);
  S.load(locale);
}

Locale get savedLocale => Locale(pref.getString(kLang) ?? "en");
