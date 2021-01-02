import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/view/drawer/about.dart';
import 'package:miaid/view/drawer/privacy&policy.dart';
import 'package:miaid/view/drawer/Terms&Cond.dart';
import 'package:miaid/view/user/user_profile_screen/user_profile.dart';
import 'package:miaid/view/user/home_screen.dart';
import 'package:miaid/component/miaid_card.dart';

class TravelCarePackages extends StatefulWidget {
  @override
  _TravelCarePackagesState createState() => _TravelCarePackagesState();
}

class _TravelCarePackagesState extends State<TravelCarePackages> {
  static const color = Color(0xFF0CBCC5);
  static const colorBlack = Color(0xFF010101);
  static const colorRed = Color(0xFFE63030);
  static const colorWhite = Color(0xFFFFFFFF);
  static const colorgrey = Color(0xFF696969);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserProfileScreen(),
              ),
            );
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
                      border: Border.all(color: color),
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
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserProfileScreen(),
                    ),
                  );
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
                  Navigator.pushReplacement(
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
                  Navigator.pushReplacement(
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
                  Navigator.pushReplacement(
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
          'Travel Care Packages',
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
                Scaffold.of(context).openDrawer();
              },
              child: Image(
                image: const AssetImage('assets/images/NavBar/ic_nb_menu.png'),
              ),
            );
          },
        ),
      ),
      body: ListView(children: [
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Text(
            'Active Package',
            style: GoogleFonts.rubik(
              color: colorBlack,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Column(
          children: [
            Image(
              image:
                  AssetImage('assets/images/Img_signin_travelcare_active.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'No Active Package',
                style: GoogleFonts.rubik(
                  color: Color(0xFF696969),
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 14,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView.builder(
            itemCount: 1,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemBuilder: (BuildContext context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                activeSubscriptionCard(
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            bottom: 11,
                          ),
                          child: Text(
                            '2 Weeks Package',
                            style: GoogleFonts.rubik(
                              color: colorWhite,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          '• Description with features goes here.',
                          style: GoogleFonts.rubik(
                            color: colorWhite.withOpacity(0.75),
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '• Lorem ipsum dolor it amet',
                          style: GoogleFonts.rubik(
                            color: colorWhite.withOpacity(0.75),
                            fontSize: 14,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 16,
                            bottom: 14,
                            right: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: colorWhite.withOpacity(0.3),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 7,
                                    right: 7,
                                    bottom: 7,
                                    top: 7,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      style: GoogleFonts.rubik(
                                        color: colorWhite.withOpacity(0.75),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'A\$${''}',
                                          style: GoogleFonts.rubik(
                                            fontSize: 12,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' 200.0',
                                          style: GoogleFonts.rubik(
                                            color: colorWhite,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 24,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: colorWhite.withOpacity(0.3),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      '10 days remaining',
                                      style: GoogleFonts.rubik(
                                        color: colorWhite,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 28.4,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Text(
            'Available Packages',
            style: GoogleFonts.rubik(
              color: colorBlack,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 10,
          ),
          child: ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: 2,
            itemBuilder: (BuildContext context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 19,
                ),
                miAidCard(
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            bottom: 11,
                          ),
                          child: Text(
                            '4 Weeks Package',
                            style: GoogleFonts.rubik(
                              color: colorBlack,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          '• Description with features goes here.',
                          style: GoogleFonts.rubik(
                            color: colorgrey,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '• Lorem ipsum dolor it amet',
                          style: GoogleFonts.rubik(
                            color: colorgrey,
                            fontSize: 14,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 16,
                            bottom: 14,
                            right: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xFFF4F4F4),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 7,
                                    right: 7,
                                    bottom: 7,
                                    top: 7,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      style: GoogleFonts.rubik(
                                        color: colorBlack,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'A\$${''}',
                                          style: GoogleFonts.rubik(
                                            fontSize: 12,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' 400.0',
                                          style: GoogleFonts.rubik(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  color: color,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 11,
                                    right: 10,
                                    bottom: 4,
                                    top: 5,
                                  ),
                                  child: Text(
                                    'Subscribe',
                                    style: GoogleFonts.rubik(
                                      color: colorWhite,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }


  Widget availablePackageCard(Widget child) {
    return Container(
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colorWhite,
        boxShadow: [
          new BoxShadow(
            color: Color(0xFF003f51).withOpacity(0.15),
            blurRadius: 15.0,
            spreadRadius: 0.0, //extend the shadow
            offset: Offset(
              0.2, // Move to right 10  horizontally
              4, // Move to bottom 10 Vertically
            ),
          ),
        ],
      ),
      child: child,
    );
  }
}
