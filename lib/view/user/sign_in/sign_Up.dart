import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/nav_bar_icons.dart';
import 'package:miaid/config/app_colors.dart';
//import 'package:miaid/component/miaid_card.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/view/drawer/privacy_and_policy.dart';
import 'package:miaid/view/drawer/terms_and_cond.dart';
import 'package:miaid/view/user/otp_screen.dart';
import 'package:miaid/view/user/sign_in/sign_In.dart';

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

  String _selectedValue = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.kffffff,
        centerTitle: true,
        title: Text(
          S.of(context).signUp,
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
                    MaterialPageRoute<void>(
                      builder: (context) => SignIn(),
                    ),
                  );
                },
                child: Text(S.of(context).signIn,
                    style: GoogleFonts.rubik(
                      color: AppColors.k0cbcc5,
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
                  left: 5,
                  right: 5,
                  top: 10,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CupertinoSegmentedControl(
                    selectedColor: AppColors.k0cbcc5,
                    unselectedColor: Colors.white,
                    borderColor: AppColors.k0cbcc5,
                    children: {
                      '0': Container(
                        decoration: BoxDecoration(
                          color: _selectedValue == '0'
                              ? AppColors.k0cbcc5
                              : Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                          border: Border.all(
                            color: AppColors.k0cbcc5,
                          ),
                        ),
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          S.of(context).individual,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.rubik(
                              fontSize: 17,
                              color: _selectedValue == '0'
                                  ? AppColors.kffffff
                                  : AppColors.k0cbcc5),
                        ),
                      ),
                      '1': Container(
                        decoration: BoxDecoration(
                          color: _selectedValue == '1'
                              ? AppColors.k0cbcc5
                              : Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          border: Border.all(
                            color: AppColors.k0cbcc5,
                          ),
                        ),
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          S.of(context).corporate,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.rubik(
                              fontSize: 17,
                              color: _selectedValue == '1'
                                  ? AppColors.kffffff
                                  : AppColors.k0cbcc5),
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
                    S.of(context).fname,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: firstNameController.text.trim().isNotEmpty
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
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Please enter First Name';
                      } else {
                        return null;
                      }
                    },
                    controller: firstNameController,
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      hintText: 'John',
                      hintStyle: GoogleFonts.rubik(
                        color: AppColors.kb1b1b1,
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
                      errorBorder: kErrorOutlineInputBorder,
                      focusedErrorBorder: kErrorFocusedOutlineInputBorder,
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
                    S.of(context).lName,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: lastNameController.text.trim().isNotEmpty
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
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Please enter Last Name';
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: lastNameController,
                    decoration: InputDecoration(
                      hintText: 'Doe',
                      hintStyle: GoogleFonts.rubik(
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
                      errorBorder: kErrorOutlineInputBorder,
                      focusedErrorBorder: kErrorFocusedOutlineInputBorder,
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
                    S.of(context).email,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: emailController.text.trim().isNotEmpty
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
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Please enter an Email';
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      setState(() {});
                    },
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'yourname@example.com',
                      hintStyle: GoogleFonts.rubik(
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
                      errorBorder: kErrorOutlineInputBorder,
                      focusedErrorBorder: kErrorFocusedOutlineInputBorder,
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
                    S.of(context).phone,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: phoneController.text.trim().isNotEmpty
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
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Please enter Phone';
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      setState(() {});
                    },
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: '1 23456 7890',
                      hintStyle: GoogleFonts.rubik(
                        color: AppColors.kb1b1b1,
                        fontSize: 14,
                      ),
                      contentPadding: EdgeInsets.only(
                        left: 0,
                        top: 5,
                        bottom: 5,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.kb1b1b1.withOpacity(0.5),
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
                      errorBorder: kErrorOutlineInputBorder,
                      focusedErrorBorder: kErrorFocusedOutlineInputBorder,
                      prefixIconConstraints: BoxConstraints(
                        maxWidth: 120,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: CountryCodePicker(
                          showDropDownButton: true,
                          alignLeft: false,
                          textStyle: GoogleFonts.rubik(
                            color: AppColors.kb1b1b1,
                            fontSize: 14,
                          ),
                          initialSelection: 'au',
                          showCountryOnly: false,
                          closeIcon: Icon(
                            Icons.close,
                            color: AppColors.k0cbcc5,
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
                                    color: AppColors.kb1b1b1,
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
                                  color: AppColors.kb1b1b1.withOpacity(0.1),
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
                    S.of(context).password,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: passwordController.text.trim().isNotEmpty
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
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Please enter Password';
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
                      hintStyle: GoogleFonts.rubik(
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
                      errorBorder: kErrorOutlineInputBorder,
                      focusedErrorBorder: kErrorFocusedOutlineInputBorder,
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
                                'assets/images/ic_signin_hide_password_active.png'),
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
                    S.of(context).confirmPass,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: confirmPasswordController.text.trim().isNotEmpty
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
                    validator: (value) {
                      if (value.trim().isEmpty) {
                        return 'Please confirm your password';
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: confirmPasswordController,
                    obscureText: _obsecureConfirmPasswordText,
                    decoration: InputDecoration(
                      hintText: S.of(context).rePass,
                      hintStyle: GoogleFonts.rubik(
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
                      errorBorder: kErrorOutlineInputBorder,
                      focusedErrorBorder: kErrorFocusedOutlineInputBorder,
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
                                'assets/images/ic_signin_hide_password_active.png'),
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
                    color: AppColors.k5e5e5e,
                    fontSize: 12,
                  ),
                  children: [
                    TextSpan(text: S.of(context).bySubmit),
                    TextSpan(
                      text: '${S.of(context).tandc} ',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (context) => TermsConditions(),
                            ),
                          );
                        },
                      style: GoogleFonts.rubik(
                        color: AppColors.k0cbcc5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: S.of(context).and),
                    TextSpan(
                      text: ' ${S.of(context).privacy}',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (context) => PrivacyPolicy(),
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
                  color: AppColors.k0cbcc5,
                  onPressed: () {
                    if (formKey.currentState.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => OTPScreen(),
                        ),
                      );
                    }
                  },
                  child: Text(
                    S.of(context).signUp,
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

  OutlineInputBorder get kErrorFocusedOutlineInputBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: AppColors.kff3b30,
        ),
      );

  OutlineInputBorder get kErrorOutlineInputBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: AppColors.kff3b30,
          width: 0.5,
        ),
      );

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
            image: AssetImage('assets/images/Img_signin_corporateuser.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 62,
            right: 61,
            top: 21,
          ),
          child: Text(
            S.of(context).corporateText,
            textAlign: TextAlign.justify,
            style: GoogleFonts.rubik(
              color: AppColors.k5e5e5e,
              fontSize: 17,
            ),
          ),
        ),
      ]),
    );
  }
}
