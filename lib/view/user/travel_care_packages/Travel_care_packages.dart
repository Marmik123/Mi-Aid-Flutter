import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/miaid_card.dart';
import 'package:miaid/component/drawer.dart';
import 'package:miaid/view/user/home_screen.dart';

class TravelCarePackages extends StatefulWidget {
  @override
  _TravelCarePackagesState createState() => _TravelCarePackagesState();
}

class _TravelCarePackagesState extends State<TravelCarePackages> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawers(),
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
                image:
                    const AssetImage('assets/images/NavBar/ic_nb_menu.png'),
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
              image: AssetImage(
                  'assets/images/Img_signin_travelcare_active.png'),
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
}
