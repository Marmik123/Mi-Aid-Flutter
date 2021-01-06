import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/view/user/password_view/reset_password.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController forgotEmailController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  static const borderColor = Color(0xFFB1B1B1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'Forgot Password',
          style: GoogleFonts.rubik(
            color: Color(0xFF010101),
            fontSize: 15,
            fontWeight: FontWeight.bold,
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
              SizedBox(
                height: 51.42,
              ),
              Container(
                height: 117,
                width: 117,
                child: Image(
                  image: AssetImage("assets/images/logo_forgot Password.png"),
                ),
              ),
              SizedBox(
                height: 36.6,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Container(
                  height: 28,
                  width: 327,
                  child: Text(
                    'An Email with link to reset password has been sent to your email. Please check and try again',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rubik(
                      color: Color(0xFF010101),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 33,
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
                          color: forgotEmailController.text.trim().length > 0
                              ? Color(0xFFB1B1B1)
                              : Color(0xFF010101),
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
                            return 'please Enter an Email';
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          setState(() {});
                        },
                        controller: forgotEmailController,
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
                              color: Color(0xFFB1B1B1),
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
                        ),
                      ),
                      SizedBox(
                        height: 20,
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
                      // if (formKey.currentState.validate()) {}
                      showAlertDialog(context);
                    },
                    child: Text(
                      'Reset Password',
                      style: GoogleFonts.rubik(
                        color: Color(0xFFFFFFFF),
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
            color: Color(0xFF0cbcc5).withOpacity(0.2),
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
        color: Color(0xFF0CBCC5),
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => ResetPassword()));
        },
        child: Text(
          'Okay',
          style: GoogleFonts.rubik(
            color: Color(0xFFFFFFFF),
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
      'Link Sent',
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
        fontWeight: FontWeight.w500,
        fontSize: 17,
        color: Color(0xFF010101),
      ),
    ),
    content: Text(
      'A Password reset link has been sent.\nPlease check your email.',
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
        fontSize: 13,
        color: Color(0xFF010101),
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
