import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController currentPasswordController = TextEditingController();
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
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'Change Password',
          style: GoogleFonts.rubik(
            color: Color(0xFF010101),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return InkWell(
              onTap: () {
                Navigator.pop(context);
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
                        'Current Password',
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
                        validator: (value) {
                          if (value.trim().length == 0) {
                            return 'Please enter a Password';
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          setState(() {});
                        },
                        controller: currentPasswordController,
                        obscureText: _obsecurePasswordText,
                        decoration: InputDecoration(
                          hintText: '**********',
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
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFFB1B1B1),
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
                        validator: (value) {
                          if (value.trim().length == 0) {
                            return 'Please enter a Password';
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
                          hintText: 'must have atleast 8 characters',
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
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFFB1B1B1),
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
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Confirm Password',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          color:
                              confirmPasswordController.text.trim().length > 0
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
                        controller: confirmPasswordController,
                        obscureText: _obsecureConfirmPasswordText,
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
                          hintText: 'Re-type your new password here',
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
                              color: Color(0xFFB1B1B1),
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
                    color: Color(0xFF0CBCC5),
                    onPressed: () {
                      // if (formKey.currentState.validate()) {
                      //   showAlertDialog(context);
                      // }
                    },
                    child: Text(
                      'Save Password',
                      style: GoogleFonts.rubik(
                        color: Color(0xFFFFFFFF),
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
