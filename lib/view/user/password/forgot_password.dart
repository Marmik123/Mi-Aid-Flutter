import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/nav_bar_icons.dart';
import 'package:miaid/config/app_colors.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/view/user/password/reset_password.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController forgotEmailController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.kffffff,
        centerTitle: true,
        title: Text(
          S.of(context).forgotPass,
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
                Navigator.pop(context);
              },
              child: navBarIcon(iconAssetName: 'ic_nb_back.png'),
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
                  image: AssetImage('assets/images/logo_forgot Password.png'),
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
                    S.of(context).forgotPassMessage,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rubik(
                      color: AppColors.k010101,
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
                        S.of(context).email,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          color: forgotEmailController.text.trim().isNotEmpty
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
                          if (value.trim().isEmpty) {
                            return S.of(context).entEmail;
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
                              color: AppColors.kb1b1b1,
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
                    color: AppColors.k0cbcc5,
                    onPressed: () {
                      // if (formKey.currentState.validate()) {}
                      showAlertDialog(context);
                    },
                    child: Text(
                      S.of(context).resetPass,
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

void showAlertDialog(BuildContext context) {
  Widget okButton = Padding(
    padding: EdgeInsets.only(left: 64.5, right: 63.5, bottom: 24.5),
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
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
          Navigator.pushReplacement(context,
              MaterialPageRoute<void>(builder: (context) => ResetPassword()));
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

  var alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    title: Text(
      S.of(context).linkSend,
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
        fontWeight: FontWeight.w500,
        fontSize: 17,
        color: AppColors.k010101,
      ),
    ),
    content: Text(
      S.of(context).linkSendMessage,
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
