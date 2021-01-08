import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/view/user/sign_In_view/signUp_2.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:miaid/view/user/sign_In_view/signIn.dart';
import 'package:miaid/config/app_colors.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  var onTapRecognizer;
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  StreamController<ErrorAnimationType> errorController;

  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SignUp2(),
            ));
      };
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.kffffff,
        centerTitle: true,
        title: Text(
          'Sign Up',
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
              child: Image(
                image: AssetImage('assets/images/NavBar/ic_nb_back.png'),
              ),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 13,
            ),
            child: Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                alignment: Alignment.centerRight,
                height: 36,
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignIn(),
                      ),
                    );
                  },
                  child: Text('Log out',
                      style: GoogleFonts.rubik(
                        color: AppColors.k0cbcc5,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
     
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 24.1, left: 41.5, right: 41.5),
              child: Center(
                child: Text(
                  'Please Verify Your Account to \n Continue',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                    color: AppColors.k010101,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 24.1, left: 41.5, right: 41.5),
              child: Center(
                child: Text(
                  'The verification code has been send to your \n dedicated mail',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                    color: AppColors.k010101,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 43, right: 42),
                child: PinCodeTextField(
                  appContext: context,
                  pastedTextStyle: TextStyle(
                    color: AppColors.k0cbcc5,
                    fontWeight: FontWeight.bold,
                  ),
                  length: 4,

                  obscureText: false,
                  obscuringCharacter: '*',
                  // animationType: AnimationType.fade,
                  // validator: (v) {
                  //   if (v.length < 3) {
                  //     return "I'm from validator";
                  //   } else {
                  //     return null;
                  //   }
                  // },
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 70,
                    fieldWidth: 50,
                    
                    inactiveColor: AppColors.k0cbcc5,
                    inactiveFillColor: AppColors.k0cbcc5.withOpacity(0.1),
                    activeColor: AppColors.k0cbcc5.withOpacity(0.1),
                    activeFillColor: AppColors.k0cbcc5.withOpacity(0.1),
                    selectedColor: AppColors.k0cbcc5.withOpacity(0.1),
                    selectedFillColor: AppColors.k0cbcc5.withOpacity(0.1),
                  ),
                  cursorColor: AppColors.k0cbcc5,

                  animationDuration: Duration(milliseconds: 300),
                  textStyle: TextStyle(
                    fontSize: 20,
                    height: 1.6,
                    color: AppColors.k0cbcc5,
                  ),

                  enableActiveFill: true,
                  errorAnimationController: errorController,
                  controller: textEditingController,
                  keyboardType: TextInputType.number,

                  onCompleted: (v) {
                    print("Completed");
                  },
                  onTap: () {
                    print("Pressed");
                  },
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      currentText = value;
                    });
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 24.1, left: 41.5, right: 41.5),
              child: Center(
                child: Text(
                  'Didn`t receive the verification code?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                    color: AppColors.k5e5e5e,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 41.5, right: 41.5),
              child: Center(
                child: Text(
                  'Resend Code',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                    color: AppColors.k5e5e5e,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 64, left: 20, right: 20, top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 44,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                  color: AppColors.k0cbcc5,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp2(),
                      ),
                    );
                  },
                  child: Text(
                    'Verify OTP',
                    style: GoogleFonts.rubik(
                      color: AppColors.kffffff,
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
    );
  }
}
