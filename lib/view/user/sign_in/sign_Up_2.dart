import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/nav_bar_icons.dart';
import 'package:miaid/config/app_colors.dart';
//import 'package:miaid/component/miaid_card.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/view/user/home_screen.dart';

class SignUp2 extends StatefulWidget {
  @override
  _SignUp2State createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
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
          S.of(context).completeYourProfile,
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
        child: Column(
          children: [
            generalDetails(),
            nextOfKin(),
            regularDoctor(),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 64,
                left: 20,
                right: 20,
                top: 40,
              ),
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
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  child: Text(
                    S.of(context).completeProfile,
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

  Widget generalDetails() {
    var dropDownLanguage = S.of(context).selectLang;
    var dropDownGender = S.of(context).selsctGender;

    var languageOption = <String>[
      S.of(context).selectLang,
      'English',
      'French',
      'Spanish',
      'Russian',
      'Arabic ',
      'Chinese'
    ];

    var genderOption = <String>[
      S.of(context).selsctGender,
      'Male',
      'Female',
      'Other'
    ];

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
                    controller: dobController,
                    decoration: InputDecoration(
                      hintText: 'Ex: 01 Jan 1990',
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
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(0),
                        child: InkWell(
                          // onTap: () {
                          //   showCupertinoModalBottomSheet(
                          //     expand: false,
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
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  Container(
                    width: 335,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.kb1b1b1,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: DropdownButton(
                        value: dropDownLanguage,
                        isExpanded: true,
                        icon: Image.asset(
                            'assets/images/ic_pharmacy_location_expand.png'),
                        iconSize: 24,
                        elevation: 16,
                        style: GoogleFonts.rubik(color: AppColors.k5e5e5e),
                        underline: SizedBox.shrink(),
                        onChanged: (String newValue) {
                          setState(() {
                            dropDownLanguage = newValue;
                          });
                        },
                        selectedItemBuilder: (BuildContext context) {
                          return languageOption.map((String value) {
                            return Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                dropDownLanguage,
                                style: TextStyle(color: AppColors.k5e5e5e),
                              ),
                            );
                          }).toList();
                        },
                        items: languageOption
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: GoogleFonts.rubik(
                                color: AppColors.k5e5e5e,
                                fontSize: 14,
                              ),
                            ),
                          );
                        }).toList(),
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
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.kb1b1b1,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      child: DropdownButton(
                        underline: SizedBox.shrink(),
                        value: dropDownGender,
                        isExpanded: true,
                        style: GoogleFonts.rubik(color: AppColors.k5e5e5e),
                        icon: Image.asset(
                            'assets/images/ic_pharmacy_location_expand.png'),
                        iconSize: 24,
                        elevation: 16,
                        onChanged: (String newValue) {
                          setState(() {
                            dropDownGender = newValue;
                          });
                        },
                        selectedItemBuilder: (BuildContext context) {
                          return genderOption.map((String value) {
                            return Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                dropDownGender,
                                style: TextStyle(color: AppColors.k5e5e5e),
                              ),
                            );
                          }).toList();
                        },
                        items: genderOption
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: GoogleFonts.rubik(
                                color: AppColors.k5e5e5e,
                                fontSize: 14,
                              ),
                            ),
                          );
                        }).toList(),
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
                  doctorPreference(),
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
                    controller: travelAgencyNameController,
                    decoration: InputDecoration(
                      hintText: S.of(context).sample,
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
              controller: fullNameController,
              decoration: InputDecoration(
                hintText: 'Ex: Kelly Babara',
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
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'samplemail@example.com',
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
              controller: phoneController,
              decoration: InputDecoration(
                hintText: '1234567890',
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
              controller: regularDoctorFullNameController,
              decoration: InputDecoration(
                hintText: 'Ex: Kelly Babara',
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
              controller: regularDoctorEmailController,
              decoration: InputDecoration(
                hintText: 'samplemail@example.com',
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

  Widget doctorPreference() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 30,
          decoration: BoxDecoration(
            color: AppColors.k0cbcc5,
            borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(
                color: AppColors.k0cbcc5.withOpacity(0.2),
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 0.0, //extend the shadow
                offset: Offset(
                  0.0, // Move to right 10  horizontally
                  0.4, // Move to bottom 10 Vertically
                ),
              )
            ],
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 38, right: 37, top: 6, bottom: 5),
            child: Text(
              S.of(context).anys,
              textAlign: TextAlign.left,
              style: GoogleFonts.rubik(color: AppColors.kffffff, fontSize: 14),
            ),
          ),
        ),
        Container(
          height: 30,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.k0cbcc5.withOpacity(0.2),
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 0.0, //extend the shadow
                offset: Offset(
                  0.0, // Move to right 10  horizontally
                  0.4, // Move to bottom 10 Vertically
                ),
              )
            ],
            color: AppColors.kffffff,
            border: Border.all(
              color: AppColors.k0cbcc5,
            ),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 35.5,
              right: 35.5,
              top: 6,
              bottom: 5,
            ),
            child: Text(
              S.of(context).male,
              style: GoogleFonts.rubik(color: AppColors.k0cbcc5, fontSize: 14),
            ),
          ),
        ),
        Container(
          height: 30,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.k0cbcc5.withOpacity(0.2),
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 0.0, //extend the shadow
                offset: Offset(
                  0.0, // Move to right 10  horizontally
                  0.4, // Move to bottom 10 Vertically
                ),
              )
            ],
            color: AppColors.kffffff,
            border: Border.all(
              color: AppColors.k0cbcc5,
            ),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 27,
              right: 27,
              top: 6,
              bottom: 5,
            ),
            child: Text(
              S.of(context).female,
              style: GoogleFonts.rubik(color: AppColors.k0cbcc5, fontSize: 14),
            ),
          ),
        ),
      ],
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
