import 'dart:ui';
import 'package:miaid/utils/shared_preferrences_utils.dart';

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
import 'package:miaid/generated/l10n.dart';
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

  String sharedPrefs = savedLocale.languageCode;

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
              top: 10,
              bottom: 10,
            ),
            child: InkWell(
              onTap: () {
                final action = CupertinoActionSheet(
                  message: Text(
                    S.of(context).changeLanguage,
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
                      onPressed: () async {
                        setState(() {
                          sharedPrefs = 'en';
                        });
                        await setLang(Locale(sharedPrefs));
                        setState(() {});
                        Navigator.pop(context);
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
                      onPressed: () async {
                        setState(() {
                          sharedPrefs = 'en';
                        });
                        await setLang(Locale(sharedPrefs));
                        setState(() {});
                        Navigator.pop(context);
                      },
                    )
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    child: Text(
                      S.of(context).cancel,
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
              child: Container(
                decoration: new BoxDecoration(
                  color: Color(0xFFEEFEFF),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    new BoxShadow(
                      color: Color(0xFF003f51).withOpacity(0.1),
                      blurRadius: 10.0,
                      spreadRadius: 0.0, //extend the shadow
                      offset: Offset(
                        0, // Move to right 10  horizontally
                        4, // Move to bottom 10 Vertically
                      ),
                    ),
                  ],
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 0,
                    ),
                    child: Text(
                      'EN',
                      style: GoogleFonts.rubik(
                        color: color,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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
                                    TextSpan(text: S.of(context).hi),
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
                                S.of(context).urinau,
                                style: GoogleFonts.rubik(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                S.of(context).needHelp,
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
                                      TextSpan(text: S.of(context).dial),
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
                                  S.of(context).emergency,
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
                      TextSpan(text: S.of(context).remainingVideo),
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
                                  S.of(context).edandClinic,
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
                                  S.of(context).miaidAssistance,
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
                                    S.of(context).eShop,
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
                                    S.of(context).videoDoctor,
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
                                S.of(context).otherService,
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
                            S.of(context).about,
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
              S.of(context).no,
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
              S.of(context).yes,
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
      S.of(context).logout,
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
          color: Color(0xFF010101), fontWeight: FontWeight.w700),
    ),
    content: Text(
      S.of(context).logoutAlertMessage,
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
              S.of(context).yes,
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
              S.of(context).cancel,
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
      S.of(context).alert,
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
          color: Color(0xFF010101), fontWeight: FontWeight.w700),
    ),
    content: Text(
      S.of(context).consultAlertMessage,
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
              S.of(context).subscribe,
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
              S.of(context).cancel,
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
      S.of(context).alert,
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
          color: Color(0xFF010101), fontWeight: FontWeight.w700),
    ),
    content: Text(
      S.of(context).travelAlertMessage,
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
      S.of(context).schedualCall,
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
