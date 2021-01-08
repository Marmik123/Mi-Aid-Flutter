import 'dart:async';
import 'package:flutter/material.dart';
import 'package:miaid/view/user/sign_In_view/signIn.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SignIn(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 0),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignIn())));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
