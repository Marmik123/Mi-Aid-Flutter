import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
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
              image: AssetImage('assets/images/NavBar/ic_nb_call_soundoff.png'),
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
            stops: [
              0.0,
              0.18,
            ],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/nature.png'),
              ),
            ),
            Positioned(
              top: 10,
              right: 150,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 17,
                    right: 17,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    '4:36',
                    style: GoogleFonts.rubik(color: colorWhite, fontSize: 12),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 98,
                      width: 98,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          new BoxShadow(
                            color: Color(0xFF000000).withOpacity(0.24),
                            blurRadius: 15.0,
                            spreadRadius: 0.0, //extend the shadow
                            offset: Offset(
                              0.0, // Move to right 10  horizontally
                              8, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                      ),
                      child: Image(
                        image: AssetImage('assets/images/ph_call_operator.png'),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 98,
                      width: 98,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          new BoxShadow(
                            color: Color(0xFF000000).withOpacity(0.24),
                            blurRadius: 15.0,
                            spreadRadius: 0.0, //extend the shadow
                            offset: Offset(
                              0.0, // Move to right 10  horizontally
                              8, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                      ),
                      child: Image(
                        image:
                            AssetImage('assets/images/ph_call_translator.png'),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 98,
                      width: 98,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          new BoxShadow(
                            color: Color(0xFF000000).withOpacity(0.24),
                            blurRadius: 15.0,
                            spreadRadius: 0.0, //extend the shadow
                            offset: Offset(
                              0.0, // Move to right 10  horizontally
                              8, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                      ),
                      child: Image(
                        image: AssetImage('assets/images/ph_call_user.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF003f51).withOpacity(0.2),
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              15.0, // Move to right 10  horizontally
                              15.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                        color: colorWhite,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 24,
                              top: 10,
                              bottom: 10,
                              right: 24,
                            ),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                      'assets/images/btn_call_switchcamera.png'),
                                ),
                                SizedBox(
                                  width: 24.89,
                                ),
                                Image(
                                  image: AssetImage(
                                      'assets/images/btn_call_turnoffvideo.png'),
                                ),
                                SizedBox(
                                  width: 24.89,
                                ),
                                Image(
                                  image: AssetImage(
                                      'assets/images/btn_call_turnonmic_copy.png'),
                                ),
                                SizedBox(
                                  width: 24.89,
                                ),
                                Image(
                                  image: AssetImage(
                                      'assets/images/btn_call_chat.png'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF003f51).withOpacity(0.2),
                              blurRadius: 25.0, // soften the shadow
                              spreadRadius: 5.0, //extend the shadow
                              offset: Offset(
                                15.0, // Move to right 10  horizontally
                                15.0, // Move to bottom 10 Vertically
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image(
                          image:
                              AssetImage('assets/images/btn_call_hangup.png'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       color: Color(0xFFEEFEFF),
            //     ),
            //     child: bottomNavigation(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
