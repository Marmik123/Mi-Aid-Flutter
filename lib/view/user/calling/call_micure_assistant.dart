import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/config/app_colors.dart';
import 'dart:async';
import 'package:miaid/view/user/calling/call_started.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => CallStarted())));
  }

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
            color: AppColors.kffffff,      fontSize: 15,
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
            colors: [AppColors.k010101, AppColors.k0cbcc5],
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
                image: AssetImage('assets/images/ph_call_doctor.png'),
              ),
            ),
            Positioned(
              top: 10,
              right: 150,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.k010101.withOpacity(0.3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 17,
                    right: 17,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    'Calling ...',
                    style: GoogleFonts.rubik(color: AppColors.kffffff, fontSize: 12),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                ),
                child: Container(
                  height: 98,
                  width: 98,
                  child: Image(
                    image: AssetImage('assets/images/ph_call_user.png'),
                  ),
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
                            color: AppColors.k003f51.withOpacity(0.2),
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              15.0, // Move to right 10  horizontally
                              15.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                        color: AppColors.kffffff            ,            borderRadius: BorderRadius.circular(10),
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
                                      'assets/images/btn_call_turnonvideo.png'),
                                ),
                                SizedBox(
                                  width: 24.89,
                                ),
                                Image(
                                  image: AssetImage(
                                      'assets/images/btn_call_turnonmic.png'),
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
                              color: AppColors.k003f51.withOpacity(0.2),
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
          ],
        ),
      ),
    );
  }
}
