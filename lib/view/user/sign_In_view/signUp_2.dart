import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/view/user/home_screen.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

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

  String dropDownLanguage = 'Select a Language';
  String dropDownGender = 'Select your gender';
  List<String> languageOption = <String>[
    'Select a Language',
    'English',
    'French',
    'Spanish',
    'Russian',
    'Arabic ',
    'Chinese'
  ];

  List<String> genderOption = <String>[
    'Select your gender',
    'Male',
    'Female',
    'Other'
  ];

  static const colorBlack = Color(0xFFB1B1B1);
  static const colorBlue = Color(0xFF0CBCC5);
  static const colorWhite = Color(0xFFFFFFFF);
  static const fontColor = Color(0xFF010101);
  static const borderColor = Color(0xFFB1B1B1);

  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'Complete Your Profile',
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
                  color: Color(0xFF0CBCC5),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Complete Profile',
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
                      'General Details',
                      style: GoogleFonts.rubik(
                        color: Color(0xFF010101),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Text(
                    'DOB',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: dobController.text.trim().length > 0
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
                    onTap: () {
                      showCupertinoModalBottomSheet(
                        expand: false,
                        context: context,
                        builder: (context) => cupertinoDatePicker(context),
                      );
                    },
                    controller: dobController,
                    decoration: InputDecoration(
                      hintText: 'Ex: 01 Jan 1990',
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
                          // onTap: () {
                          //   showCupertinoModalBottomSheet(
                          //     expand: false,
                          //     context: context,
                          //     builder: (context) =>
                          //         cupertinoDatePicker(context),
                          //   );
                          // },
                          child: Image(
                            image: AssetImage(
                                'assets/images/NavBar/ic_nb_callhistory_date.png'),
                          ),
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
                    'Prefered Language',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: languageController.text.trim().length > 0
                          ? Color(0xFFB1B1B1)
                          : Color(0xFF010101),
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
                        color: borderColor,
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
                        style: GoogleFonts.rubik(color: fontColor),
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
                                style: TextStyle(color: fontColor),
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
                                color: fontColor,
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
                    'Gender',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: genderController.text.trim().length > 0
                          ? Color(0xFFB1B1B1)
                          : Color(0xFF010101),
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
                        color: borderColor,
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
                        style: GoogleFonts.rubik(color: fontColor),
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
                                style: TextStyle(color: fontColor),
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
                                color: fontColor,
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
                    'Doctor Preference',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: doctorPreferenceController.text.trim().length > 0
                          ? Color(0xFFB1B1B1)
                          : Color(0xFF010101),
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
                    'Travel Agency Name',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.rubik(
                      color: travelAgencyNameController.text.trim().length > 0
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
                    controller: travelAgencyNameController,
                    decoration: InputDecoration(
                      hintText: 'Sample',
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
                'Next Of Kin',
                style: GoogleFonts.rubik(
                  color: Color(0xFF010101),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 19,
            ),
            Text(
              'Full Name',
              textAlign: TextAlign.left,
              style: GoogleFonts.rubik(
                color: fullNameController.text.trim().length > 0
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
              onChanged: (value) {
                setState(() {});
              },
              controller: fullNameController,
              decoration: InputDecoration(
                hintText: 'Ex: Kelly Babara',
                hintStyle: GoogleFonts.rubik(
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
              ),
            ),
            SizedBox(
              height: 25,
            ),
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
              onChanged: (value) {
                setState(() {});
              },
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'samplemail@example.com',
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
                    color: Color(0xFFFA0020),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Mobile',
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
                hintText: '1234567890',
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
                      color: colorBlue,
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
                            color: Color(0xFFb1b1b1),
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
                'Regular Doctor',
                style: GoogleFonts.rubik(
                  color: Color(0xFF010101),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 19,
            ),
            Text(
              'Full Name',
              textAlign: TextAlign.left,
              style: GoogleFonts.rubik(
                color: regularDoctorFullNameController.text.trim().length > 0
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
              onChanged: (value) {
                setState(() {});
              },
              controller: regularDoctorFullNameController,
              decoration: InputDecoration(
                hintText: 'Ex: Kelly Babara',
                hintStyle: GoogleFonts.rubik(
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
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Email',
              textAlign: TextAlign.left,
              style: GoogleFonts.rubik(
                color: regularDoctorEmailController.text.trim().length > 0
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
              onChanged: (value) {
                setState(() {});
              },
              controller: regularDoctorEmailController,
              decoration: InputDecoration(
                hintText: 'samplemail@example.com',
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
                    color: Color(0xFFFA0020),
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
            color: colorBlue,
            borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF0cbcc5).withOpacity(0.2),
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
              'Any',
              textAlign: TextAlign.left,
              style: GoogleFonts.rubik(color: colorWhite, fontSize: 14),
            ),
          ),
        ),
        Container(
          height: 30,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xFF0cbcc5).withOpacity(0.2),
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 0.0, //extend the shadow
                offset: Offset(
                  0.0, // Move to right 10  horizontally
                  0.4, // Move to bottom 10 Vertically
                ),
              )
            ],
            color: colorWhite,
            border: Border.all(
              color: colorBlue,
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
              'Male',
              style: GoogleFonts.rubik(color: colorBlue, fontSize: 14),
            ),
          ),
        ),
        Container(
          height: 30,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xFF0cbcc5).withOpacity(0.2),
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 0.0, //extend the shadow
                offset: Offset(
                  0.0, // Move to right 10  horizontally
                  0.4, // Move to bottom 10 Vertically
                ),
              )
            ],
            color: colorWhite,
            border: Border.all(
              color: colorBlue,
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
              'Female',
              style: GoogleFonts.rubik(color: colorBlue, fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }

  Widget cupertinoDatePicker(context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 200,
        child: CupertinoDatePicker(
          initialDateTime: _dateTime,
          use24hFormat: false,
          onDateTimeChanged: (dateTime) {
            setState(() {
              _dateTime = dateTime;
              print(_dateTime);
            });
          },
        ),
      ),
    );
  }
}
