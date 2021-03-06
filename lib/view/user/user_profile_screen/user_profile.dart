import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/drawer.dart';
import 'package:miaid/component/nav_bar_icons.dart';
import 'package:miaid/config/app_colors.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/view/user/password/change_password.dart';
import 'package:miaid/view/user/user_profile_screen/edit_user_profile.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: drawer(context),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColors.kffffff,
        centerTitle: true,
        title: Text(
          S.of(context).myProfile,
          style: GoogleFonts.rubik(
            color: AppColors.k010101,
            fontSize: 15,
            fontWeight: FontWeight.w500,
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
                    MaterialPageRoute<void>(
                      builder: (context) => EditUserProfile(),
                    ),
                  );
                },
                child: Text(S.of(context).editProfile,
                    style: GoogleFonts.rubik(
                      color: AppColors.k0cbcc5,
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
              child: navBarIcon(iconAssetName: 'ic_nb_menu.png'),
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
                            border: Border.all(color: AppColors.k0cbcc5),
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
                          color: AppColors.k010101,
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
                          color: AppColors.k696969,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '+612 3456 4567',
                        style: GoogleFonts.rubik(
                          color: AppColors.k696969,
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
                S.of(context).otherSettings,
                style: GoogleFonts.rubik(
                  color: AppColors.k010101,
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
                  splashColor: AppColors.k0cbcc5.withOpacity(0.1),
                  highlightColor: AppColors.k0cbcc5.withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                    side: BorderSide(
                      color: AppColors.k30bee6,
                    ),
                  ),
                  color: AppColors.kffffff,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => ChangePassword(),
                      ),
                    );
                  },
                  child: Text(
                    S.of(context).changePass,
                    style: GoogleFonts.rubik(
                      color: AppColors.k0cbcc5,
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
                  S.of(context).generalDetail,
                  style: GoogleFonts.rubik(
                    color: AppColors.k010101,
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
                              S.of(context).dob,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.rubik(
                                color: AppColors.k696969,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          TextFormField(
                            // validator: (value) {
                            //   if (value.trim().isEmpty) {
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
                              color: AppColors.k010101,
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
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              S.of(context).preLanguage,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.rubik(
                                color: AppColors.k696969,
                                fontSize: 14,
                              ),
                            ),
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
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                            ),
                            enabled: false,
                            controller: languageController..text = 'English',
                            style: GoogleFonts.rubik(
                              color: AppColors.k010101,
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
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              S.of(context).gender,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.rubik(
                                color: AppColors.k696969,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
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
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                            ),
                            enabled: false,
                            controller: genderController..text = 'Male',
                            style: GoogleFonts.rubik(
                              color: AppColors.k010101,
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
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              S.of(context).doctorPre,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.rubik(
                                color: AppColors.k696969,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
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
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                            ),
                            enabled: false,
                            controller: doctorPreferenceController
                              ..text = 'Any',
                            style: GoogleFonts.rubik(
                              color: AppColors.k010101,
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
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              S.of(context).travelAgencyName,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.rubik(
                                color: AppColors.k696969,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
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
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                            ),
                            enabled: false,
                            controller: travelAgencyNameController
                              ..text = 'First Class tour',
                            style: GoogleFonts.rubik(
                              color: AppColors.k010101,
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
                  S.of(context).nextOfKin,
                  style: GoogleFonts.rubik(
                    color: AppColors.k010101,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        S.of(context).fullName,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          color: AppColors.k696969,
                          fontSize: 14,
                        ),
                      ),
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
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                      ),
                      enabled: false,
                      controller: fullNameController..text = 'Lucinda Mendez',
                      style: GoogleFonts.rubik(
                        color: AppColors.k010101,
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
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        S.of(context).email,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          color: AppColors.k696969,
                          fontSize: 14,
                        ),
                      ),
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
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                      ),
                      enabled: false,
                      controller: emailController..text = 'lucinda.m@mail.com',
                      style: GoogleFonts.rubik(
                        color: AppColors.k010101,
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
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        S.of(context).phone,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          color: AppColors.k696969,
                          fontSize: 14,
                        ),
                      ),
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
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                      ),
                      enabled: false,
                      controller: phoneController..text = '+612 2277 6241',
                      style: GoogleFonts.rubik(
                        color: AppColors.k010101,
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
                  S.of(context).regularDoctor,
                  style: GoogleFonts.rubik(
                      color: AppColors.k010101,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        S.of(context).fullName,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          color: AppColors.k696969,
                          fontSize: 14,
                        ),
                      ),
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
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                      ),
                      enabled: false,
                      controller: regularDoctorFullNameController
                        ..text = 'Theresa Warren',
                      style: GoogleFonts.rubik(
                        color: AppColors.k010101,
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
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        S.of(context).email,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.rubik(
                          color: AppColors.k696969,
                          fontSize: 14,
                        ),
                      ),
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
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                      ),
                      enabled: false,
                      controller: regularDoctorEmailController
                        ..text = 'theresawarren@mail.com',
                      style: GoogleFonts.rubik(
                        color: AppColors.k010101,
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
