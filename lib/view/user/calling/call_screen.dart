import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/view/drawer/about.dart';
import 'package:miaid/view/drawer/privacy&policy.dart';
import 'package:miaid/view/drawer/Terms&Cond.dart';
import 'package:miaid/view/user/user_profile_screen/user_profile.dart';
import 'package:miaid/view/user/home_screen.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  static const color = Color(0xFF0CBCC5);
  static const colorBlack = Color(0xFF010101);
  static const colorRed = Color(0xFFE63030);
  static const colorWhite = Color(0xFFFFFFFF);
  static const colorgrey = Color(0xFF696969);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      // extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'MiAid Assistance',
          style: GoogleFonts.rubik(
            color: colorWhite,
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
            child: Image(
              image: AssetImage('assets/images/NavBar/ic_nb_call_sound.png'),
            ),
          ),
        ],
      ),

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [colorBlack, color],
            // stops: [
            //   0.0,
            //   0.0,
            // ],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Image(
                image: AssetImage('assets/images/ph_call_doctor.png'),
              ),
            ),
            Positioned(
              top: 10,
              right: 150,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorBlack,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 17,
                    right: 17,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    'Calling',
                    style: GoogleFonts.rubik(color: colorWhite, fontSize: 12),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFEEFEFF),
                ),
                child: bottomNavigation(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomNavigation() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        items: [
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/btn_call_switchcamera.png'),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/btn_call_turnonvideo.png'),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/btn_call_turnonmic.png'),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/btn_call_chat.png'),
              ),
              label: ''),
        ],
      ),
    );
  }
}
