import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/nav_bar_icons.dart';
//import 'package:miaid/component/miaid_card.dart';
import 'package:miaid/config/app_colors.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/view/user/user_profile_screen/user_profile.dart';

class EditUserProfile extends StatefulWidget {
  @override
  _EditUserProfileState createState() => _EditUserProfileState();
}

class _EditUserProfileState extends State<EditUserProfile> {
  TextEditingController accountFirstNameController = TextEditingController();
  TextEditingController accountLastNameController = TextEditingController();
  TextEditingController accountEmailController = TextEditingController();
  TextEditingController accountPhoneController = TextEditingController();

  TextEditingController dobController = TextEditingController();
  TextEditingController languageController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController doctorPreferenceController = TextEditingController();
  TextEditingController travelAgencyNameController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController regularDoctorFullNameController =
      TextEditingController();
  TextEditingController regularDoctorEmailController = TextEditingController();

  final generalDetailsKey = GlobalKey<FormState>();
  final nextOfKinKey = GlobalKey<FormState>();
  final regularDoctorKey = GlobalKey<FormState>();
  final accountDetailsKey = GlobalKey<FormState>();

  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.kffffff,
        centerTitle: true,
        title: Text(
          S.of(context).editProfile,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            accountDetails(),
            generalDetails(),
            nextOfKin(),
            regularDoctor(),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 30, bottom: 44),
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
                      MaterialPageRoute<void>(
                        builder: (context) => UserProfileScreen(),
                      ),
                    );
                    // cupertinoDatePicker(context);
                  },
                  child: Text(
                    S.of(context).saveChange,
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

  Widget accountDetails() {
    return Form(
      key: accountDetailsKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      S.of(context).accountDetails,
                      style: GoogleFonts.rubik(
                        color: AppColors.k010101,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Text(
                    S.of(context).fname,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: accountFirstNameController.text.trim().isNotEmpty
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
                    // validator: (value) {
                    //   if (value.trim().isEmpty) {
                    //     return 'please Enter an Email';
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: accountFirstNameController..text = 'John',
                    style: GoogleFonts.rubik(
                      color: AppColors.k010101,
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
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
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).lName,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: accountLastNameController.text.trim().isNotEmpty
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
                    // validator: (value) {
                    //   if (value.trim().isEmpty) {
                    //     return 'please Enter an Email';
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: accountLastNameController..text = 'Doe',
                    style: GoogleFonts.rubik(
                      color: AppColors.k010101,
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
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
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).email,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: accountEmailController.text.trim().isNotEmpty
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
                    // validator: (value) {
                    //   if (value.trim().isEmpty) {
                    //     return 'please Enter an Email';
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: accountEmailController
                      ..text = 'Johndoe@mail.com',
                    style: GoogleFonts.rubik(
                      color: AppColors.k010101,
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
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
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).phone,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: accountPhoneController.text.trim().isNotEmpty
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
                    // validator: (value) {
                    //   if (value.trim().isEmpty) {
                    //     return 'please Enter an Email';
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    onChanged: (value) {
                      setState(() {});
                    },
                    keyboardType: TextInputType.phone,
                    controller: accountPhoneController..text = '1 23456 7890',
                    style: GoogleFonts.rubik(
                      color: AppColors.k010101,
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 0,
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
          ],
        ),
      ),
    );
  }

  Widget generalDetails() {
    return Form(
      key: generalDetailsKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      S.of(context).generalDetail,
                      style: GoogleFonts.rubik(
                        color: AppColors.k010101,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Text(
                    S.of(context).dob,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: dobController.text.trim().isNotEmpty
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
                    // validator: (value) {
                    //   if (value.trim().isEmpty) {
                    //     return 'please Enter an Email';
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    onChanged: (value) {
                      setState(() {});
                    },
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => cupertinoDatePicker(context),
                      );
                    },
                    readOnly: true,
                    controller: dobController..text = '01 Jan 1990',

                    decoration: InputDecoration(
                      // hintText: 'Ex: 01 Jan 1990',
                      // hintStyle: TextStyle(
                      //   color: AppColors.kb1b1b1,
                      //   fontSize: 14,
                      // ),
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
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(0),
                        child: InkWell(
                          // onTap: () {
                          //   showCupertinoModalBottomSheet(
                          //     context: context,
                          //     builder: (context) =>
                          //         cupertinoDatePicker(context),
                          //   );
                          // },
                          child: navBarIcon(
                              iconAssetName: 'ic_nb_callhistory_date.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              S.of(context).preLanguage,
              textAlign: TextAlign.left,
              style: GoogleFonts.rubik(
                color: languageController.text.trim().isNotEmpty
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
              // validator: (value) {
              //   if (value.trim().isEmpty) {
              //     return 'please Enter an Email';
              //   } else {
              //     return null;
              //   }
              // },
              onChanged: (value) {
                setState(() {});
              },
              controller: languageController..text = 'English',
              style: GoogleFonts.rubik(
                color: AppColors.k010101,
                fontSize: 14,
              ),
              decoration: InputDecoration(
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
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              S.of(context).gender,
              textAlign: TextAlign.left,
              style: GoogleFonts.rubik(
                color: genderController.text.trim().isNotEmpty
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
              // validator: (value) {
              //   if (value.trim().isEmpty) {
              //     return 'please Enter an Email';
              //   } else {
              //     return null;
              //   }
              // },
              onChanged: (value) {
                setState(() {});
              },
              controller: genderController..text = 'Male',
              style: GoogleFonts.rubik(
                color: AppColors.k010101,
                fontSize: 14,
              ),
              decoration: InputDecoration(
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
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              S.of(context).doctorPre,
              textAlign: TextAlign.left,
              style: GoogleFonts.rubik(
                color: doctorPreferenceController.text.trim().isNotEmpty
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
              // validator: (value) {
              //   if (value.trim().isEmpty) {
              //     return 'please Enter an Email';
              //   } else {
              //     return null;
              //   }
              // },
              onChanged: (value) {
                setState(() {});
              },
              controller: doctorPreferenceController..text = 'Any',
              style: GoogleFonts.rubik(
                color: AppColors.k010101,
                fontSize: 14,
              ),
              decoration: InputDecoration(
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
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              S.of(context).travelAgencyName,
              textAlign: TextAlign.left,
              style: GoogleFonts.rubik(
                color: travelAgencyNameController.text.trim().isNotEmpty
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
              // validator: (value) {
              //   if (value.trim().isEmpty) {
              //     return 'please Enter an Email';
              //   } else {
              //     return null;
              //   }
              // },
              onChanged: (value) {
                setState(() {});
              },
              controller: travelAgencyNameController
                ..text = 'First Class tours',
              style: GoogleFonts.rubik(
                color: AppColors.k010101,
                fontSize: 14,
              ),
              decoration: InputDecoration(
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
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget nextOfKin() {
    return Form(
      key: nextOfKinKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                S.of(context).nextOfKin,
                style: GoogleFonts.rubik(
                  color: AppColors.k010101,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 19,
            ),
            Text(
              S.of(context).fullName,
              textAlign: TextAlign.left,
              style: GoogleFonts.rubik(
                color: fullNameController.text.trim().isNotEmpty
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
              onChanged: (value) {
                setState(() {});
              },
              controller: fullNameController..text = 'Lucinda Mendez',
              style: GoogleFonts.rubik(
                color: AppColors.k010101,
                fontSize: 14,
              ),
              decoration: InputDecoration(
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
              ),
            ),
            SizedBox(
              height: 25,
            ),
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
              onChanged: (value) {
                setState(() {});
              },
              keyboardType: TextInputType.emailAddress,
              controller: emailController..text = 'lucinda.m@mail.com',
              style: GoogleFonts.rubik(
                color: AppColors.k010101,
                fontSize: 14,
              ),
              decoration: InputDecoration(
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
                    color: AppColors.kfa0020,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 25,
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
                    // validator: (value) {
                    //   if (value.trim().isEmpty) {
                    //     return 'please Enter an Email';
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    onChanged: (value) {
                      setState(() {});
                    },
                    keyboardType: TextInputType.phone,
                    controller: phoneController..text = '1 23456 7890',
                    style: GoogleFonts.rubik(
                      color: AppColors.k010101,
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 0,
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
          ],
        ),
      ),
    );
  }

  Widget regularDoctor() {
    return Form(
      key: regularDoctorKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                S.of(context).regularDoctor,
                style: GoogleFonts.rubik(
                  color: AppColors.k010101,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 19,
            ),
            Text(
              S.of(context).fullName,
              textAlign: TextAlign.left,
              style: GoogleFonts.rubik(
                color: regularDoctorFullNameController.text.trim().isNotEmpty
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
              onChanged: (value) {
                setState(() {});
              },
              controller: regularDoctorFullNameController
                ..text = 'Theresa Warren',
              style: GoogleFonts.rubik(
                color: AppColors.k010101,
                fontSize: 14,
              ),
              decoration: InputDecoration(
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
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              S.of(context).email,
              textAlign: TextAlign.left,
              style: GoogleFonts.rubik(
                color: regularDoctorEmailController.text.trim().isNotEmpty
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
              onChanged: (value) {
                setState(() {});
              },
              controller: regularDoctorEmailController
                ..text = 'theresawarren@mail.com',
              style: GoogleFonts.rubik(
                color: AppColors.k010101,
                fontSize: 14,
              ),
              decoration: InputDecoration(
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
                    color: AppColors.kfa0020,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cupertinoDatePicker(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    S.of(context).cancel,
                    style: GoogleFonts.rubik(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Color.fromRGBO(12, 188, 197, 1)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    S.of(context).done,
                    style: GoogleFonts.rubik(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(12, 188, 197, 1)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            child: CupertinoDatePicker(
              initialDateTime: _dateTime,
              maximumYear: DateTime.now().year,
              minimumYear: 1930,
              use24hFormat: false,
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (dateTime) {
                setState(() {
                  _dateTime = dateTime;
                  print(_dateTime);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
