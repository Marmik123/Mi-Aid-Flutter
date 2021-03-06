import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/nav_bar_icons.dart';
import 'package:miaid/config/app_colors.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/view/user/chat/chat.dart';

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        brightness: Brightness.dark,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          S.of(context).assistant,
          style: GoogleFonts.rubik(
            color: AppColors.kffffff,
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 13,
            ),
            child: navBarIcon(iconAssetName: 'ic_nb_call_soundoff.png'),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.k010101, AppColors.k0cbcc5],
            stops: [
              0.0,
              0.3,
            ],
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/doctor.jpg'),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.k010101, Colors.transparent],
                  stops: [
                    0.0,
                    0.3,
                  ],
                ),
              ),
            ),
            Positioned(
              top: AppBar().preferredSize.height + 25,
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
                    '4:36',
                    style: GoogleFonts.rubik(
                      color: AppColors.kffffff,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
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
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: AppColors.kffffff,
                          width: 2,
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.k000000.withOpacity(0.24),
                            blurRadius: 15.0,
                            spreadRadius: 0.0, //extend the shadow
                            offset: Offset(
                              0.0, // Move to right 10  horizontally
                              8, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/female_doctor.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 98,
                      width: 98,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: AppColors.kffffff,
                          width: 2,
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.k000000.withOpacity(0.24),
                            blurRadius: 15.0,
                            spreadRadius: 0.0, //extend the shadow
                            offset: Offset(
                              0.0, // Move to right 10  horizontally
                              8, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/female_doctor.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 98,
                      width: 98,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: AppColors.kffffff,
                          width: 2,
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.k000000.withOpacity(0.24),
                            blurRadius: 15.0,
                            spreadRadius: 0.0, //extend the shadow
                            offset: Offset(
                              0.0, // Move to right 10  horizontally
                              8, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/female_doctor.jpg'),
                        ),
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
                            color: AppColors.k003f51.withOpacity(0.2),
                            blurRadius: 25.0, // soften the shadow
                            spreadRadius: 5.0, //extend the shadow
                            offset: Offset(
                              15.0, // Move to right 10  horizontally
                              15.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                        color: AppColors.kffffff,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/btn_call_switchcamera.png'),
                                  width: 32,
                                  height: 32,
                                ),
                                SizedBox(
                                  width: 24.89,
                                ),
                                Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/btn_call_turnoffvideo.png'),
                                  width: 32,
                                  height: 32,
                                ),
                                SizedBox(
                                  width: 24.89,
                                ),
                                Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/btn_call_turnonmic_copy.png'),
                                  width: 32,
                                  height: 32,
                                ),
                                SizedBox(
                                  width: 24.89,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute<void>(
                                        builder: (context) => ChatScreen(),
                                      ),
                                    );
                                  },
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/btn_call_chat.png'),
                                    width: 32,
                                    height: 32,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
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
                        image: AssetImage('assets/images/btn_call_hangup.png'),
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
            //       color: AppColors.keefeff,
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
