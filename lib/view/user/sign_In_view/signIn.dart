import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/config/app_colors.dart';
import 'package:miaid/view/user/password_view/forgot_password.dart';
import 'package:miaid/view/user/sign_In_view/signUp.dart';
import 'package:miaid/view/user/home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:miaid/view/user/password_view/reset_password.dart';


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

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.kffffff,
        centerTitle: true,
        title: Text(
          'Sign In',
          style: GoogleFonts.rubik(
            color: AppColors.k010101,
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
                    "Change Language",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: AppColors.k8f8e94,
                    ),
                  ),
                  actions: <Widget>[
                    CupertinoActionSheetAction(
                      child: Text(
                        "English",
                        style: GoogleFonts.rubik(
                          color: AppColors.k0cbcc5,
                          fontSize: 24,
                        ),
                      ),
                      isDefaultAction: true,
                      onPressed: () {
                        print("Action 1 is been clicked");
                      },
                    ),
                    CupertinoActionSheetAction(
                      child: Text(
                        "中文",
                        style: GoogleFonts.rubik(
                          color: AppColors.k0cbcc5,
                          fontSize: 24,
                        ),
                      ),
                      isDestructiveAction: true,
                      onPressed: () {
                        print("Action 2 is been clicked");
                      },
                    )
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    child: Text(
                      "Cancel",
                      style: GoogleFonts.rubik(
                        color: AppColors.k0cbcc5,
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
                  color: AppColors.keefeff,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    new BoxShadow(
                      color: AppColors.k003f51.withOpacity(0.1),
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
                      'EN',
                      style: GoogleFonts.rubik(
                        color: AppColors.k0cbcc5,
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
                  color: AppColors.kfa0020.withOpacity(0.1),
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
                                color: AppColors.kff3b30,
                                fontSize: 12,
                              ),
                              children: [
                                TextSpan(
                                    text:
                                        'Sorry, We couldn’t find an account with given username and/or password. We can help you to'),
                                TextSpan(
                                  text: ' Reset Password',
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
                                    color: AppColors.k0cbcc5,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(text: ' or create a '),
                                TextSpan(
                                  text: 'New Account',
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
                                    color: AppColors.k0cbcc5,
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
                        'Email',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          // color: emailController.value.toString().length <= 0
                          //     ? AppColors.kb1b1b1
                          //     : AppColors.k010101,
                          color: emailController.text.trim().length > 0
                              ? AppColors.kb1b1b1
                              : AppColors.k010101,

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
                            return 'Please enter an Email';
                          } else if (!GetUtils.isEmail(value.trim()))
                            return "The format doesn`t look right. Please check again";
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
                            color: AppColors.kb1b1b1,
                            fontSize: 14,
                          ),
                          contentPadding: EdgeInsets.only(
                            left: 16,
                            top: 5,
                            bottom: 5,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.k010101,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.kfa0020,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: AppColors.kb1b1b1,
                              width: 0.5,
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              // color: AppColors.kfa0020,
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
                        'Password',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          color: passwordController.text.trim().length > 0
                              ? AppColors.kb1b1b1
                              : AppColors.k010101,
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
                            return "Please enter a Password";
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: InputDecoration(
                            hintText: 'Must have atleast 8 characters',
                            hintStyle: TextStyle(
                              color: AppColors.kb1b1b1,
                              fontSize: 14,
                            ),
                            contentPadding: EdgeInsets.only(
                              left: 16,
                              top: 5,
                              bottom: 5,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.k010101,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: AppColors.kb1b1b1,
                                width: 0.5,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.kfa0020,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.kfa0020,
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
                    color: AppColors.k0cbcc5,
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
                      'Sign In',
                      style: GoogleFonts.rubik(
                        color: AppColors.kffffff,
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
                  'Forgot Password ?',
                  style: GoogleFonts.rubik(
                    color: AppColors.k0cbcc5,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                'Don`t have an account?',
                style: GoogleFonts.rubik(
                  color: AppColors.k010101,
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
                    splashColor: AppColors.k0cbcc5.withOpacity(0.1),
                    highlightColor: AppColors.k0cbcc5.withOpacity(0.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                      side: BorderSide(
                        color: AppColors.k30bee6,
                      ),
                    ),
                    color: AppColors.kffffff,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.rubik(
                        color: AppColors.k0cbcc5,
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
