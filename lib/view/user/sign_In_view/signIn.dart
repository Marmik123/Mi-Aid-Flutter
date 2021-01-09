import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/view/user/password_view/forgot_password.dart';
import 'package:miaid/view/user/sign_In_view/signUp.dart';
import 'package:miaid/view/user/home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:miaid/view/user/password_view/reset_password.dart';
import 'package:miaid/utils/shared_preferrences_utils.dart';

//import 'package:miaid/l10n/intl_en.arb';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String email = 'popat.jitendra@gmail.com';
  String password = 'tricolourpro';

  String userEmail, userPassword;

  final formKey = GlobalKey<FormState>();

  bool _obsecurePasswordText = true;

  static const color = Color(0xFF0CBCC5);
  static const borderColor = Color(0xFFB1B1B1);

  String sharedPrefs = savedLocale.languageCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          S.of(context).signIn,
          style: GoogleFonts.rubik(
            color: Color(0xFF010101),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 13,
              top: 10,
              bottom: 10,
            ),
            child: InkWell(
              onTap: () {
                final action = CupertinoActionSheet(
                  message: Text(
                    S.of(context).changeLanguage,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFF8F8E94),
                    ),
                  ),
                  actions: <Widget>[
                    CupertinoActionSheetAction(
                      child: Text(
                        "English",
                        style: GoogleFonts.rubik(
                          color: color,
                          fontSize: 24,
                        ),
                      ),
                      isDefaultAction: true,
                      onPressed: () async {
                        setState(() {
                          sharedPrefs = 'en';
                        });
                        await setLang(Locale(sharedPrefs));
                        setState(() {});
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoActionSheetAction(
                      child: Text(
                        "中文",
                        style: GoogleFonts.rubik(
                          color: color,
                          fontSize: 24,
                        ),
                      ),
                      isDestructiveAction: true,
                      onPressed: () async {
                        setState(() {
                          sharedPrefs = 'cn';
                        });
                        await setLang(Locale(sharedPrefs));
                        setState(() {});
                        Navigator.pop(context);
                      },
                    )
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    child: Text(
                      S.of(context).cancel,
                      style: GoogleFonts.rubik(
                        color: color,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                );
                showCupertinoModalPopup(
                    context: context, builder: (context) => action);
              },
              child: Container(
                decoration: new BoxDecoration(
                  color: Color(0xFFEEFEFF),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    new BoxShadow(
                      color: Color(0xFF003f51).withOpacity(0.1),
                      blurRadius: 10.0,
                      spreadRadius: 0.0, //extend the shadow
                      offset: Offset(
                        0, // Move to right 10  horizontally
                        4, // Move to bottom 10 Vertically
                      ),
                    ),
                  ],
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 0,
                    ),
                    child: Text(
                      sharedPrefs.toUpperCase(),
                      style: GoogleFonts.rubik(
                        color: color,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 46,
              ),
              Container(
                height: 117,
                width: 117,
                child: Image(
                  image: AssetImage("assets/images/logo_auth.png"),
                ),
              ),
              SizedBox(
                height: 46,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 19,
                ),
                child: Container(
                  color: Color(0xFFfa0020).withOpacity(0.1),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 11, top: 19, bottom: 18),
                        child: Image(
                          image:
                              AssetImage('assets/images/ic_signin_error.png'),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 12, right: 9, top: 10, bottom: 10),
                          child: RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              style: GoogleFonts.rubik(
                                color: Color(0xFFFF3B30),
                                fontSize: 12,
                              ),
                              children: [
                                TextSpan(text: S.of(context).resetPassMessage),
                                TextSpan(
                                  text: ' ${S.of(context).resetPass}',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ResetPassword(),
                                        ),
                                      );
                                    },
                                  style: GoogleFonts.rubik(
                                    color: color,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(text: S.of(context).orcreate),
                                TextSpan(
                                  text: S.of(context).newAccount,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SignUp(),
                                        ),
                                      );
                                    },
                                  style: GoogleFonts.rubik(
                                    color: color,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).email,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          // color: emailController.value.toString().length <= 0
                          //     ? Color(0xFFB1B1B1)
                          //     : Color(0xFF010101),
                          color: emailController.text.trim().length > 0
                              ? Color(0xFFB1B1B1)
                              : Color(0xFF010101),

                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value.trim().length == 0) {
                            return S.of(context).entEmail;
                          } else if (!GetUtils.isEmail(value.trim()))
                            return S.of(context).entVEmain;
                          else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          setState(() {});
                        },
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'yourname@example.com',
                          hintStyle: TextStyle(
                            color: Color(0xFfB1B1B1),
                            fontSize: 14,
                          ),
                          contentPadding: EdgeInsets.only(
                            left: 16,
                            top: 5,
                            bottom: 5,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF010101),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFA0020),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: borderColor,
                              width: 0.5,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              // color: Color(0xFFFA0020),
                              color: Colors.red,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        S.of(context).password,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          color: passwordController.text.trim().length > 0
                              ? Color(0xFFB1B1B1)
                              : Color(0xFF010101),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: passwordController,
                        obscureText: _obsecurePasswordText,
                        validator: (value) {
                          if (value.trim().length == 0) {
                            return S.of(context).entPass;
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: InputDecoration(
                            hintText: S.of(context).passHint,
                            hintStyle: TextStyle(
                              color: Color(0xFFB1B1B1),
                              fontSize: 14,
                            ),
                            contentPadding: EdgeInsets.only(
                              left: 16,
                              top: 5,
                              bottom: 5,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF010101),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: borderColor,
                                width: 0.5,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFA0020),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFFA0020),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffixIcon: Padding(
                              padding: EdgeInsets.all(0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _obsecurePasswordText =
                                        !_obsecurePasswordText;
                                  });
                                },
                                child: Image(
                                  image: AssetImage(
                                      "assets/images/ic_signin_hide_password_active.png"),
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 44,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    color: Color(0xFF0CBCC5),
                    onPressed: () {
                      userEmail = emailController.text;
                      userPassword = passwordController.text;

                      if (formKey.currentState.validate()) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      }
                    },
                    child: Text(
                      S.of(context).signIn,
                      style: GoogleFonts.rubik(
                        color: Color(0xFFFFFFFF),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPassword()));
                },
                child: Text(
                  S.of(context).forgotPass,
                  style: GoogleFonts.rubik(
                    color: Color(0xFF0CBCC5),
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                S.of(context).dontHaveAccount,
                style: GoogleFonts.rubik(
                  color: Color(0xFF010101),
                  fontSize: 14,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 15,
                  bottom: 54,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 44,
                  child: FlatButton(
                    splashColor: color.withOpacity(0.1),
                    highlightColor: color.withOpacity(0.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                      side: BorderSide(
                        color: Color(0xFF30BEE6),
                      ),
                    ),
                    color: Color(0xFFFFFFFF),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                    child: Text(
                      S.of(context).signUp,
                      style: GoogleFonts.rubik(
                        color: color,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
