import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/view/user/sign_In_view/signIn.dart';
import 'package:miaid/view/user/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:miaid/view/drawer/privacy&policy.dart';
import 'package:miaid/view/drawer/Terms&Cond.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool _obsecurePasswordText = true;
  bool _obsecureConfirmPasswordText = true;

  String _selectedValue;

  static const color = Color(0xFF0CBCC5);
  static const borderColor = Color(0xFFB1B1B1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'Sign Up',
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 13,
            ),
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
                child: Text('Sign In',
                    style: GoogleFonts.rubik(
                      color: Color(0xFF0CBCC5),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                ),
                child: CupertinoSegmentedControl(
                  selectedColor: color,
                  unselectedColor: Colors.white,
                  borderColor: Color(0xFF0CBCC5),
                  children: {
                    '0': Container(
                      decoration: BoxDecoration(
                        color: _selectedValue == '0'
                            ? Color(0xFF0CBCC5)
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          topLeft: Radius.circular(0),
                        ),
                        border: Border.all(
                          color: Color(0xFF0CBCC5),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Individual User',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                            fontSize: 17,
                            color: _selectedValue == '0'
                                ? Color(0xFFFFFFFF)
                                : Color(0xFF0CBCC5)),
                      ),
                    ),
                    '1': Container(
                      decoration: BoxDecoration(
                        color: _selectedValue == '1'
                            ? Color(0xFF0CBCC5)
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          topLeft: Radius.circular(0),
                        ),
                        border: Border.all(
                          color: Color(0xFF0CBCC5),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Corporate User',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                            fontSize: 17,
                            color: _selectedValue == '1'
                                ? Color(0xFFFFFFFF)
                                : Color(0xFF0CBCC5)),
                      ),
                    ),
                  },
                  onValueChanged: (value) {
                    setState(() {
                      _selectedValue = value;
                    });
                  },
                  groupValue: _selectedValue,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _selectedValue == '1' ? corporateUser() : individualUser(),
          ],
        ),
      ),
    );
  }

  Widget individualUser() {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'First Name',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: firstNameController.text.trim().length > 0
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
                    // validator: (value) {
                    //   if (value.trim().length == 0) {
                    //     return 'please Enter an Email';
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    controller: firstNameController,
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      hintText: 'John',
                      hintStyle: GoogleFonts.rubik(
                        color: Color(0xFfB1B1B1),
                        fontSize: 14,
                      ),
                      contentPadding: EdgeInsets.only(
                        left: 16,
                        top: 5,
                        bottom: 5,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow),
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
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Last Name',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: lastNameController.text.trim().length > 0
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
                    // validator: (value) {
                    //   if (value.trim().length == 0) {
                    //     return 'please Enter an Email';
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: lastNameController,
                    decoration: InputDecoration(
                      hintText: 'Doe',
                      hintStyle: GoogleFonts.rubik(
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
                          color: borderColor,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
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
                    // validator: (value) {
                    //   if (value.trim().length == 0) {
                    //     return 'please Enter an Email';
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    onChanged: (value) {
                      setState(() {});
                    },
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'yourname@example.com',
                      hintStyle: GoogleFonts.rubik(
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
                          color: borderColor,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: phoneController.text.trim().length > 0
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
                    // validator: (value) {
                    //   if (value.trim().length == 0) {
                    //     return 'please Enter an Email';
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    onChanged: (value) {
                      setState(() {});
                    },
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: '1 23456 7890',
                      hintStyle: GoogleFonts.rubik(
                        color: Color(0xFfB1B1B1),
                        fontSize: 14,
                      ),
                      contentPadding: EdgeInsets.only(
                        left: 0,
                        top: 5,
                        bottom: 5,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFB1B1B1).withOpacity(0.5),
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
                      prefixIconConstraints: BoxConstraints(
                        maxWidth: 120,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: CountryCodePicker(
                          showDropDownButton: true,
                          alignLeft: false,
                          textStyle: GoogleFonts.rubik(
                            color: Color(0xFFB1B1B1),
                            fontSize: 14,
                          ),
                          initialSelection: 'au',
                          showCountryOnly: false,
                          closeIcon: const Icon(
                            Icons.close,
                            color: color,
                          ),
                          showOnlyCountryWhenClosed: false,
                          padding: EdgeInsets.zero,
                          builder: (country) {
                            return Row(
                              children: [
                                Image.asset(
                                  country.flagUri,
                                  package: 'country_code_picker',
                                  width: 32,
                                ),
                                SizedBox(
                                  width: 3.69,
                                ),
                                Text(
                                  country.dialCode,
                                  style: GoogleFonts.rubik(
                                    color: Color(0xFFB1B1B1),
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Image.asset(
                                    'assets/images/ic_pharmacy_location_expand.png'),
                                SizedBox(
                                  width: 6,
                                ),
                                Container(
                                  height: 35,
                                  width: 1,
                                  color: Color(0xFFb1b1b1).withOpacity(0.1),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    // validator: (value) {
                    //   if (value.trim().length == 0) {
                    //     return 'please Enter an Email';
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: passwordController,
                    obscureText: _obsecurePasswordText,
                    decoration: InputDecoration(
                      hintText: 'Must have atleast 8 characters',
                      hintStyle: GoogleFonts.rubik(
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
                          color: borderColor,
                          width: 0.5,
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _obsecurePasswordText = !_obsecurePasswordText;
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
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Confirm Password',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: confirmPasswordController.text.trim().length > 0
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
                    // validator: (value) {
                    //   if (value.trim().length == 0) {
                    //     return 'please Enter an Email';
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: confirmPasswordController,
                    obscureText: _obsecureConfirmPasswordText,
                    decoration: InputDecoration(
                      hintText: 'Re-type your new password here',
                      hintStyle: GoogleFonts.rubik(
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
                          color: borderColor,
                          width: 0.5,
                        ),
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48, right: 48),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.rubik(
                    color: Color(0xFF5E5E5E),
                    fontSize: 12,
                  ),
                  children: [
                    TextSpan(text: 'By Submitting, You agree to'),
                    TextSpan(
                      text: ' our Terms & Conditions',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TermsConditions(),
                            ),
                          );
                        },
                      style: GoogleFonts.rubik(
                        color: color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Privacy Policy.',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PrivacyPolicy(),
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
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 64),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 44,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                  color: Color(0xFF0CBCC5),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OTPScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Sign Up',
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
    );
  }

  Widget corporateUser() {
    return Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 73.58,
            right: 72.57,
            top: 143,
          ),
          child: Image(
            image: AssetImage("assets/images/Img_signin_corporateuser.png"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 62,
            right: 61,
            top: 21,
          ),
          child: Text(
            'Unfortunately you are unable to sign up for a corporate account using the app. Please contact your employer to receive the login details if your company is registered with MiAid Services',
            textAlign: TextAlign.justify,
            style: GoogleFonts.rubik(
              color: Color(0xFF5E5E5E),
              fontSize: 17,
            ),
          ),
        ),
      ]),
    );
  }
}
