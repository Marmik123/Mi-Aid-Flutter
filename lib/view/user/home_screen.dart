import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/miaid_card.dart';
import 'package:miaid/payment/additional_services.dart';
import 'package:miaid/view/drawer/about.dart';
import 'package:miaid/view/user/calling/call.dart';
import 'package:miaid/view/user/sign_In_view/signIn.dart';
import 'package:miaid/view/user/travel_care_packages/Travel_care_packages.dart';
import 'package:miaid/view/map/map_screen.dart';

import 'package:miaid/view/user/e_shop/e_shop.dart';
import 'package:miaid/component/drawer.dart';
import 'package:miaid/view/user/calling/call_micure_assistant.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const color = Color(0xFF0CBCC5);
  static const colorBlack = Color(0xFF010101);
  static const colorRed = Color(0xFFE63030);

  int remainingVideoConsultations = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: drawer(context),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'MiAid',
          style: GoogleFonts.rubik(
            color: Color(0xFF010101),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 13,
            ),
            child: InkWell(
              onTap: () {
                final action = CupertinoActionSheet(
                  message: Text(
                    "Change Language",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color(0xFF8F8E94),
                    ),
                  ),
                  actions: <Widget>[
                    CupertinoActionSheetAction(
                      child: Text(
                        "English",
                        style: GoogleFonts.rubik(
                          color: color,
                          fontSize: 24,
                        ),
                      ),
                      isDefaultAction: true,
                      onPressed: () {
                        print("Action 1 is been clicked");
                      },
                    ),
                    CupertinoActionSheetAction(
                      child: Text(
                        "中文",
                        style: GoogleFonts.rubik(
                          color: color,
                          fontSize: 24,
                        ),
                      ),
                      isDestructiveAction: true,
                      onPressed: () {
                        print("Action 2 is been clicked");
                      },
                    )
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    child: Text(
                      "Cancel",
                      style: GoogleFonts.rubik(
                        color: color,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                );
                showCupertinoModalPopup(
                    context: context, builder: (context) => action);
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 13, top: 4, bottom: 4),
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF003f51).withOpacity(0.1),
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 0.0, //extend the shadow
                        offset: Offset(
                          0.0, // Move to right 10  horizontally
                          0.4, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image(
                    image:
                        AssetImage('assets/images/NavBar/ic_nb_language.png'),
                  ),
                ),
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
          children: [
            Container(
              color: Color(0xFF2E2E2E),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 23, bottom: 28),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: GoogleFonts.rubik(
                                    color: Color(0xFFFFFFFF),
                                  ),
                                  children: [
                                    TextSpan(text: 'Hi'),
                                    TextSpan(
                                      text: ' John',
                                      style: GoogleFonts.rubik(
                                        color: color,
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(text: ','),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'You are in Australia',
                                style: GoogleFonts.rubik(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'How can we help you today?',
                                style: GoogleFonts.rubik(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 23, bottom: 28),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image(
                                  image: AssetImage(
                                      'assets/images/ic_home_emergencywithbg.png'),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: GoogleFonts.rubik(
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 12,
                                    ),
                                    children: [
                                      TextSpan(text: 'Dial'),
                                      TextSpan(
                                        text: ' 000',
                                        style: GoogleFonts.rubik(
                                          color: Color(0xFFE63030),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'in an Emergency',
                                  style: GoogleFonts.rubik(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.rubik(
                      color: Color(0xFF5E5E5E),
                      fontSize: 13,
                    ),
                    children: [
                      TextSpan(text: 'Remaining video consultations'),
                      TextSpan(
                        text: ' $remainingVideoConsultations out of 10',
                        style: GoogleFonts.rubik(
                          color: remainingVideoConsultations == 0
                              ? colorRed
                              : colorBlack,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 10,
                right: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MapScreen(),
                            ),
                          );
                        },
                        child: miAidCard(
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, top: 16, right: 45, bottom: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ED and Clinics \nNear Me',
                                  style: GoogleFonts.rubik(
                                    color: Color(0xFF010101),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 33,
                                ),
                                Image(
                                  image: AssetImage(
                                      'assets/images/ic_service_clinics.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CallScreen(),
                            ),
                          );
                        },
                        child: miAidCard(
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, top: 16, bottom: 16, right: 65),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'MiAid \nAssistance',
                                  style: GoogleFonts.rubik(
                                    color: Color(0xFF010101),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 33,
                                ),
                                Image(
                                  image: AssetImage(
                                      'assets/images/ic_service_assistance.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EShop(),
                              ),
                            );
                          },
                          child: miAidCard(
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, top: 19.2, right: 85, bottom: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'E - Shop',
                                    style: GoogleFonts.rubik(
                                      color: Color(0xFF010101),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 45,
                                  ),
                                  Image(
                                    image: AssetImage(
                                        'assets/images/ic_service_eshop.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              remainingVideoConsultations--;
                              if (remainingVideoConsultations == 0) {
                                videoConsultationsAlert(context);
                              } else {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => CallScreen(),
                                //   ),
                                // );
                                callAlertDialog(context);
                              }
                            });
                          },
                          child: miAidCard(
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, top: 16, right: 46, bottom: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Video Consult \nA Doctor',
                                    style: GoogleFonts.rubik(
                                      color: Color(0xFF010101),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 33,
                                  ),
                                  Image(
                                    image: AssetImage(
                                        'assets/images/ic_service_doctor.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 5,
                      right: 5,
                      top: 16,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AdditionalServices(),
                            ));
                      },
                      child: miAidCard(
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, top: 16, right: 87, bottom: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                    'assets/images/ic_service_others.png'),
                              ),
                              SizedBox(
                                width: 19,
                              ),
                              Text(
                                'Other MiAid Services',
                                style: GoogleFonts.rubik(
                                  color: Color(0xFF010101),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutMiAid(),
                      ));
                },
                child: Container(
                  color: Color(0xFF2E2E2E),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 14,
                        bottom: 14,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image:
                                AssetImage('assets/images/ic_home_about.png'),
                          ),
                          SizedBox(
                            width: 16.33,
                          ),
                          Text(
                            'About MiAid',
                            style: GoogleFonts.rubik(
                              color: color,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
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

showAlertDialog(BuildContext context) {
  Widget okButton = Padding(
    padding: EdgeInsets.only(left: 64.5, right: 63.5, bottom: 24.5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
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
              Navigator.pop(context);
            },
            child: Text(
              'No',
              style: GoogleFonts.rubik(
                color: Color(0xFFFFFFFF),
                fontSize: 14,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SignIn(),
                ),
              );
            },
            child: Text(
              'Yes',
              style: GoogleFonts.rubik(
                color: Color(0xFF0CBCC5),
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    ),
  );

  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    title: Text(
      'Log out',
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
          color: Color(0xFF010101), fontWeight: FontWeight.w700),
    ),
    content: Text(
      'Are you sure you want to log out?',
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
        fontSize: 13,
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

videoConsultationsAlert(BuildContext context) {
  Widget okButton = Padding(
    padding: EdgeInsets.only(left: 64.5, right: 63.5, bottom: 24.5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
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
              Navigator.pop(context);
              individualUserSubscriptionAlert(context);
            },
            child: Text(
              'Yes',
              style: GoogleFonts.rubik(
                color: Color(0xFFFFFFFF),
                fontSize: 14,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              'Cancel',
              style: GoogleFonts.rubik(
                color: Color(0xFF0CBCC5),
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    ),
  );

  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    title: Text(
      'Alert',
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
          color: Color(0xFF010101), fontWeight: FontWeight.w700),
    ),
    content: Text(
      'You don’t have any available video consultations left. You may get the required service through MiAid Services. Do you want to access MiAid Services?',
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
        fontSize: 13,
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

individualUserSubscriptionAlert(BuildContext context) {
  Widget okButton = Padding(
    padding: EdgeInsets.only(left: 64.5, right: 63.5, bottom: 24.5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
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
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => TravelCarePackages(),
                ),
              );
            },
            child: Text(
              'Subscribe',
              style: GoogleFonts.rubik(
                color: Color(0xFFFFFFFF),
                fontSize: 14,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              'Cancel',
              style: GoogleFonts.rubik(
                color: Color(0xFF0CBCC5),
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    ),
  );

  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    title: Text(
      'Alert',
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
          color: Color(0xFF010101), fontWeight: FontWeight.w700),
    ),
    content: Text(
      'To be eligible for these services you should be subscribed to a travel care package',
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
        fontSize: 13,
      ),
    ),
    actions: [okButton],
  );

  showDialog(
      barrierColor: Colors.black38,
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}

callAlertDialog(BuildContext context) {
  Widget okButton = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 45,
        ),
        child: Row(
          children: [
            Image(
              height: 55.14,
              width: 55.14,
              image: AssetImage('assets/images/ic_call_operator.png'),
            ),
            SizedBox(width: 4),
            Image(
              height: 55.14,
              width: 55.14,
              image: AssetImage('assets/images/ic_call_doctor.png'),
            ),
            SizedBox(width: 4),
            Image(
              height: 55.14,
              width: 55.14,
              image: AssetImage('assets/images/ic_call_translator.png'),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 40,
          right: 30,
          top: 30,
          bottom: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Call(),
                  ),
                );
              },
              child: Image(
                image: AssetImage('assets/images/btn_call_answer.png'),
              ),
            ),
            SizedBox(width: 25),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image(
                  image: AssetImage('assets/images/btn_call_hangup.png'),
                ),
              ),
            ),
          ],
        ),
      )
    ],
  );

  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    title: Text(
      'Scheduled Call',
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
        color: Color(0xFF010101),
        fontSize: 14,
      ),
    ),
    content: Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Text(
        'Ralph Fernandez, Alice Grant, Lulu Norman',
        textAlign: TextAlign.center,
        style: GoogleFonts.rubik(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: color,
        ),
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
