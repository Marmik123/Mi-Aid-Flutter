import 'dart:async';
import 'package:flutter/material.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/utils/shared_preferrences_utils.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:miaid/view/user/sign_In_view/signIn.dart';
//import 'view/user/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initPreferences();
  S.load(savedLocale);

  runApp(MaterialApp(
    localizationsDelegates: [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: S.delegate.supportedLocales,
    debugShowCheckedModeBanner: false,
    home: SignIn(),
  ));
}
