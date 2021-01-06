import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
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

  static const color = Color(0xFF0CBCC5);
  static const borderColor = Color(0xFFB1B1B1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'Sign In',
          style: GoogleFonts.rubik(
            color: Color(0xFF010101),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 13,
            ),
            child: InkWell(
              onTap: () {
                final action = CupertinoActionSheet(
                  message: Text(
                    "Change Language",
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
                      onPressed: () {
                        print("Action 1 is been clicked");
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
                      onPressed: () {
                        print("Action 2 is been clicked");
                      },
                    )
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    child: Text(
                      "Cancel",
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
              child: Padding(
                padding: const EdgeInsets.only(right: 13, top: 4, bottom: 4),
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF003f51).withOpacity(0.1),
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 0.0, //extend the shadow
                        offset: Offset(
                          0.0, // Move to right 10  horizontally
                          0.4, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image(
                    image:
                        AssetImage('assets/images/NavBar/ic_nb_language.png'),
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
                                    color: color,
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
                        'Email',
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
                        'Password',
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
                      'Sign In',
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
                  'Forgot Password ?',
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
                'Don`t have an account?',
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
                      'Sign Up',
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
