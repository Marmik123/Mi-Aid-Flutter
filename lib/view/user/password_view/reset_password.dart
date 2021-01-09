import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/config/app_colors.dart';
import 'package:miaid/view/user/sign_In_view/sign_In.dart';
import 'package:miaid/view/user/password_view/forgot_password.dart';
import 'package:miaid/generated/l10n.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  

  bool _obsecurePasswordText = true;
  bool _obsecureConfirmPasswordText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.kffffff,
        centerTitle: true,
        title: Text(
          S.of(context).resetPass,
          style: GoogleFonts.rubik(
            color: AppColors.k010101,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgotPassword(),
                  ),
                );
              },
              child: Image(
                image: AssetImage('assets/images/NavBar/ic_nb_back.png'),
              ),
            );
          },
        ),
      ),
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).password,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          color: passwordController.text.trim().length > 0
                              ? AppColors.kb1b1b1
                              : AppColors.k010101,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextFormField(
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
                        controller: passwordController,
                        obscureText: _obsecurePasswordText,
                        decoration: InputDecoration(
                          hintText: S.of(context).passHint,
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
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        S.of(context).confirmPass,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          color:
                              confirmPasswordController.text.trim().length > 0
                                  ? AppColors.kb1b1b1
                                  : AppColors.k010101,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: confirmPasswordController,
                        obscureText: _obsecureConfirmPasswordText,
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
                          hintText: S.of(context).rePass,
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
                                  _obsecureConfirmPasswordText =
                                      !_obsecureConfirmPasswordText;
                                });
                              },
                              child: Image(
                                image: AssetImage(
                                    "assets/images/ic_signin_hide_password_active.png"),
                              ),
                            ),
                          ),
                        ),
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
                      if (formKey.currentState.validate()) {
                        showAlertDialog(context);
                      }
                    },
                    child: Text(
                      S.of(context).savePass,
                      style: GoogleFonts.rubik(
                        color: AppColors.kffffff,
                        fontSize: 17,
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

showAlertDialog(BuildContext context) {
  Widget okButton = Padding(
    padding: EdgeInsets.only(left: 64.5, right: 63.5, bottom: 24.5),
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 36,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          new BoxShadow(
            color: AppColors.k0cbcc5.withOpacity(0.2),
            blurRadius: 10.0,
            spreadRadius: 0.0, //extend the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              4, // Move to bottom 10 Vertically
            ),
          ),
        ],
      ),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
        color: AppColors.k0cbcc5,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignIn()));
        },
        child: Text(
          S.of(context).okay,
          style: GoogleFonts.rubik(
            color: AppColors.kffffff,
            fontSize: 17,
          ),
        ),
      ),
    ),
  );

  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    title: Text(
      S.of(context).success,
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: AppColors.k010101,
      ),
    ),
    content: Text(
      S.of(context).successMessage,
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
        fontSize: 13,
        color: AppColors.k010101,
      ),
    ),
    actions: [okButton],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
