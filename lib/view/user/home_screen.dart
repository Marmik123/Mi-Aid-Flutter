import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/drawer.dart';
import 'package:miaid/component/miaid_card.dart';
import 'package:miaid/component/nav_bar_icons.dart';
import 'package:miaid/config/app_colors.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/payment/additional_services.dart';
import 'package:miaid/utils/shared_preferrences_utils.dart';
import 'package:miaid/view/drawer/about.dart';
import 'package:miaid/view/map/map_screen.dart';
import 'package:miaid/view/user/calling/call.dart';
import 'package:miaid/view/user/calling/call_micure_assistant.dart';
import 'package:miaid/view/user/e_shop/e_shop.dart';
import 'package:miaid/view/user/sign_in/sign_in.dart';
import 'package:miaid/view/user/travel_care_packages/travel_care_packages.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String langCode = savedLocale.languageCode;

  int remainingVideoConsultations = 10;
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
          'MiAid',
          style: GoogleFonts.rubik(
            color: AppColors.k010101,
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
                      color: AppColors.k8f8e94,
                    ),
                  ),
                  actions: <Widget>[
                    CupertinoActionSheetAction(
                      child: Text(
                        'English',
                        style: GoogleFonts.rubik(
                          color: AppColors.k0cbcc5,
                          fontSize: 24,
                        ),
                      ),
                      isDefaultAction: true,
                      onPressed: () async {
                        setState(() {
                          langCode = 'en';
                        });
                        await setLang(Locale(langCode));
                        setState(() {});
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoActionSheetAction(
                      child: Text(
                        '中文',
                        style: GoogleFonts.rubik(
                          color: AppColors.k0cbcc5,
                          fontSize: 24,
                        ),
                      ),
                      isDestructiveAction: true,
                      onPressed: () async {
                        setState(() {
                          langCode = 'cn';
                        });
                        await setLang(Locale(langCode));
                        setState(() {});
                        Navigator.pop(context);
                      },
                    )
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    child: Text(
                      S.of(context).cancel,
                      style: GoogleFonts.rubik(
                        color: AppColors.k0cbcc5,
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
                decoration: BoxDecoration(
                  color: AppColors.keefeff,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.k003f51.withOpacity(0.1),
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
                      langCode.toUpperCase(),
                      style: GoogleFonts.rubik(
                        color: AppColors.k0cbcc5,
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
              child: navBarIcon(iconAssetName: 'ic_nb_menu.png'),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.k2e2e2e,
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
                                    color: AppColors.kffffff,
                                  ),
                                  children: [
                                    TextSpan(text: S.of(context).hi),
                                    TextSpan(
                                      text: ' John',
                                      style: GoogleFonts.rubik(
                                        color: AppColors.k0cbcc5,
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
                                  color: AppColors.kffffff,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                S.of(context).needHelp,
                                style: GoogleFonts.rubik(
                                  color: AppColors.kffffff,
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
                                      color: AppColors.kffffff,
                                      fontSize: 12,
                                    ),
                                    children: [
                                      TextSpan(text: S.of(context).dial),
                                      TextSpan(
                                        text: ' 000',
                                        style: GoogleFonts.rubik(
                                          color: AppColors.ke63030,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  S.of(context).emergency,
                                  style: GoogleFonts.rubik(
                                    color: AppColors.kffffff,
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
                      color: AppColors.k5e5e5e,
                      fontSize: 13,
                    ),
                    children: [
                      TextSpan(text: S.of(context).remainingVideo),
                      TextSpan(
                        text: ' $remainingVideoConsultations out of 10',
                        style: GoogleFonts.rubik(
                          color: remainingVideoConsultations == 0
                              ? AppColors.ke63030
                              : AppColors.k010101,
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
                            MaterialPageRoute<void>(
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
                                    color: AppColors.k010101,
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
                            MaterialPageRoute<void>(
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
                                    color: AppColors.k010101,
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
                              MaterialPageRoute<void>(
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
                                      color: AppColors.k010101,
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
                              if (remainingVideoConsultations <= 0) {
                                videoConsultationsAlert(context);
                              } else {
                                remainingVideoConsultations--;
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute<void>(
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
                                      color: AppColors.k010101,
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
                            MaterialPageRoute<void>(
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
                                  color: AppColors.k010101,
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
                      MaterialPageRoute<void>(
                        builder: (context) => AboutMiAid(),
                      ));
                },
                child: Container(
                  color: AppColors.k2e2e2e,
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
                              color: AppColors.k0cbcc5,
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

void showAlertDialog(BuildContext context) {
  Widget okButton = Padding(
    padding: EdgeInsets.only(left: 64.5, right: 63.5, bottom: 24.5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.k0cbcc5.withOpacity(0.2),
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
            color: AppColors.k0cbcc5,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              S.of(context).no,
              style: GoogleFonts.rubik(
                color: AppColors.kffffff,
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
                MaterialPageRoute<void>(
                  builder: (context) => SignIn(),
                ),
              );
            },
            child: Text(
              S.of(context).yes,
              style: GoogleFonts.rubik(
                color: AppColors.k0cbcc5,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    ),
  );

  var alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    title: Text(
      S.of(context).logout,
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
          color: AppColors.k010101, fontWeight: FontWeight.w700),
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

void videoConsultationsAlert(BuildContext context) {
  Widget okButton = Padding(
    padding: EdgeInsets.only(left: 64.5, right: 63.5, bottom: 24.5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.k0cbcc5.withOpacity(0.2),
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
            color: AppColors.k0cbcc5,
            onPressed: () {
              Navigator.pop(context);
              individualUserSubscriptionAlert(context);
            },
            child: Text(
              S.of(context).yes,
              style: GoogleFonts.rubik(
                color: AppColors.kffffff,
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
                color: AppColors.k0cbcc5,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    ),
  );

  var alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    title: Text(
      S.of(context).alert,
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
          color: AppColors.k010101, fontWeight: FontWeight.w700),
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

void individualUserSubscriptionAlert(BuildContext context) {
  Widget okButton = Padding(
    padding: EdgeInsets.only(left: 64.5, right: 63.5, bottom: 24.5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.k0cbcc5.withOpacity(0.2),
                blurRadius: 10.0,
                spreadRadius: 0.0, //extend the shadow
                offset: Offset(
                  0.0, // Move to right 10  horizontally
                  4, // Move to bottom 10 Vertically
                ),
              ),
            ],
          ),
          // ignore: deprecated_member_use
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            ),
            color: AppColors.k0cbcc5,
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => TravelCarePackages(),
                ),
              );
            },
            child: Text(
              S.of(context).subscribe,
              style: GoogleFonts.rubik(
                color: AppColors.kffffff,
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
                color: AppColors.k0cbcc5,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    ),
  );

  var alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    title: Text(
      S.of(context).alert,
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
          color: AppColors.k010101, fontWeight: FontWeight.w700),
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

void callAlertDialog(BuildContext context) {
  var alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    title: Text(
      S.of(context).schedualCall,
      textAlign: TextAlign.center,
      style: GoogleFonts.rubik(
        color: AppColors.k010101,
        fontSize: 14,
      ),
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            'Ralph Fernandez, Alice Grant, Lulu Norman',
            textAlign: TextAlign.center,
            style: GoogleFonts.rubik(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.k0cbcc5,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            // horizontal: 45,
            vertical: 30,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
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
            bottom: 30,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
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
    ),

    // actions: [okButton],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
