import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/view/drawer/about.dart';
import 'package:miaid/view/drawer/privacy&policy.dart';
import 'package:miaid/view/drawer/Terms&Cond.dart';
import 'package:miaid/view/user/travel_care_packages/Travel_care_packages.dart';
import 'package:miaid/view/user/home_screen.dart';
import 'package:miaid/view/user/user_profile_screen/edit_user_profile.dart';
import 'package:miaid/view/user/password_view/change_password.dart';

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
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

  static const colorBlue = Color(0xFF0CBCC5);
  static const colorBlack = Color(0xFF010101);
  static const colorGrey = Color(0xFF5E5E5E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Container(
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(color: colorBlue),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo_auth.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'john Doe',
                style: GoogleFonts.rubik(
                  color: Color(0xFF010101),
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.grey,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 23),
                    child: Text(
                      'Home',
                      style: GoogleFonts.rubik(
                        color: Color(0xFF010101),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  leading: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, bottom: 9, right: 20),
                    child: Image(
                      image: AssetImage('assets/images/ic_sidebar_home.png'),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 23),
                    child: Text(
                      'My Profile',
                      style: GoogleFonts.rubik(
                        color: Color(0xFF010101),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  leading: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, bottom: 9, right: 20),
                    child: Image(
                      image: AssetImage('assets/images/ic_sidebar_profile.png'),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TravelCarePackages(),
                    ),
                  );
                },
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 23),
                    child: Text(
                      'Travel Care',
                      style: GoogleFonts.rubik(
                        color: Color(0xFF010101),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  leading: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, bottom: 9, right: 20),
                    child: Image(
                      image:
                          AssetImage('assets/images/ic_sidebar_travelcare.png'),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 23),
                    child: Text(
                      'Call History',
                      style: GoogleFonts.rubik(
                        color: Color(0xFF010101),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  leading: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, bottom: 9, right: 20),
                    child: Image(
                      image: AssetImage(
                          'assets/images/ic_sidebar_callhistory.png'),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TermsConditions(),
                    ),
                  );
                },
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 23),
                    child: Text(
                      'Terms & Conditions',
                      style: GoogleFonts.rubik(
                        color: Color(0xFF010101),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  leading: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, bottom: 9, right: 20),
                    child: Image(
                      image: AssetImage('assets/images/ic_sidebar_terms.png'),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PrivacyPolicy(),
                    ),
                  );
                },
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 23),
                    child: Text(
                      'Privacy Policy',
                      style: GoogleFonts.rubik(
                        color: Color(0xFF010101),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  leading: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, bottom: 9, right: 20),
                    child: Image(
                      image: AssetImage('assets/images/ic_sidebar_privacy.png'),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutMiAid(),
                    ),
                  );
                },
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 23),
                    child: Text(
                      'About MiAid',
                      style: GoogleFonts.rubik(
                        color: Color(0xFF010101),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  leading: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, bottom: 9, right: 20),
                    child: Image(
                      image: AssetImage('assets/images/ic_sidebar_about.png'),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  showAlertDialog(context);
                },
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 23),
                    child: Text(
                      'Log out',
                      style: GoogleFonts.rubik(
                        color: Color(0xFFFA0020),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  leading: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, bottom: 9, right: 20),
                    child: Image(
                      image: AssetImage('assets/images/ic_sidebar_logout.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'My Profile',
          style: GoogleFonts.rubik(
            color: Color(0xFF010101),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: Container(
              alignment: Alignment.centerRight,
              height: 36,
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditUserProfile(),
                    ),
                  );
                },
                child: Text('Edit Profile',
                    style: GoogleFonts.rubik(
                      color: Color(0xFF0CBCC5),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Image(
                image: const AssetImage('assets/images/NavBar/ic_nb_menu.png'),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Stack(
                      children: [
                        Container(
                          height: 79,
                          width: 79,
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            border: Border.all(color: colorBlue),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/logo_auth.png'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        Positioned(
                            top: 60,
                            left: 30,
                            child: Image(
                              image: AssetImage(
                                  'assets/images/ic_profile_uploadpicture.png'),
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe',
                        style: GoogleFonts.rubik(
                          color: colorBlack,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'johndoe@gmail.com',
                        style: GoogleFonts.rubik(
                          color: colorGrey,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '+612 3456 4567',
                        style: GoogleFonts.rubik(
                          color: colorGrey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 36.1,
            ),
            generalDetails(),
            nextOfKin(),
            regularDoctor(),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 16),
              child: Text(
                'Other Settings',
                style: GoogleFonts.rubik(
                  color: Color(0xFF010101),
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
                bottom: 54,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 44,
                child: FlatButton(
                  splashColor: colorBlue.withOpacity(0.1),
                  highlightColor: colorBlue.withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                    side: BorderSide(
                      color: Color(0xFF30BEE6),
                    ),
                  ),
                  color: Color(0xFFFFFFFF),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChangePassword(),
                      ),
                    );
                  },
                  child: Text(
                    'Change Password',
                    style: GoogleFonts.rubik(
                      color: colorBlue,
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  'General Details',
                  style: GoogleFonts.rubik(
                    color: Color(0xFF010101),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'DOB',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.rubik(
                                color: colorGrey,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          TextFormField(
                            // validator: (value) {
                            //   if (value.trim().length == 0) {
                            //     return 'please Enter an Email';
                            //   } else {
                            //     return null;
                            //   }
                            // },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                            ),
                            onChanged: (value) {
                              setState(() {});
                            },
                            enabled: false,
                            controller: dobController..text = '24 Aug 1986',
                            style: GoogleFonts.rubik(
                              color: colorBlack,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Preferred Language',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.rubik(
                                color: colorGrey,
                                fontSize: 14,
                              ),
                            ),
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
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                            ),
                            enabled: false,
                            controller: languageController..text = 'English',
                            style: GoogleFonts.rubik(
                              color: colorBlack,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Email',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.rubik(
                                color: colorGrey,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
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
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                            ),
                            enabled: false,
                            controller: genderController..text = 'Male',
                            style: GoogleFonts.rubik(
                              color: colorBlack,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Doctor Preference',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.rubik(
                                color: colorGrey,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
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
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                            ),
                            enabled: false,
                            controller: doctorPreferenceController
                              ..text = 'Any',
                            style: GoogleFonts.rubik(
                              color: colorBlack,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Travel Agency Name',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.rubik(
                                color: colorGrey,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
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
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                            ),
                            enabled: false,
                            controller: travelAgencyNameController
                              ..text = 'First Class tour',
                            style: GoogleFonts.rubik(
                              color: colorBlack,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget nextOfKin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  'Next of Kin',
                  style: GoogleFonts.rubik(
                    color: Color(0xFF010101),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Full Name',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          color: colorGrey,
                          fontSize: 14,
                        ),
                      ),
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
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                      ),
                      enabled: false,
                      controller: fullNameController..text = 'Lucinda Mendez',
                      style: GoogleFonts.rubik(
                        color: colorBlack,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Email',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          color: colorGrey,
                          fontSize: 14,
                        ),
                      ),
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
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                      ),
                      enabled: false,
                      controller: emailController..text = 'lucinda.m@mail.com',
                      style: GoogleFonts.rubik(
                        color: colorBlack,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Phone',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          color: colorGrey,
                          fontSize: 14,
                        ),
                      ),
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
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                      ),
                      enabled: false,
                      controller: phoneController..text = '+612 2277 6241',
                      style: GoogleFonts.rubik(
                        color: colorBlack,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget regularDoctor() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  'Regular Doctor',
                  style: GoogleFonts.rubik(
                      color: Color(0xFF010101),
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Full Name',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          color: colorGrey,
                          fontSize: 14,
                        ),
                      ),
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
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                      ),
                      enabled: false,
                      controller: regularDoctorFullNameController
                        ..text = 'Theresa Warren',
                      style: GoogleFonts.rubik(
                        color: colorBlack,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Email',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          color: colorGrey,
                          fontSize: 14,
                        ),
                      ),
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
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                      ),
                      enabled: false,
                      controller: regularDoctorEmailController
                        ..text = 'theresawarren@mail.com',
                      style: GoogleFonts.rubik(
                        color: colorBlack,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
