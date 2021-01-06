import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/drawer.dart';
import 'package:miaid/component/miaid_card.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      drawer: drawer(context),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'ED and Clinics Near Me',
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
      body: Stack(
        children: [
          Center(
            child: Text('Map Goes Here..'),
          ),
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 16,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: TextField(
                      // validator: (value) {
                      //   if (value.trim().length == 0) {
                      //     return 'please Enter an Email';
                      //   } else {
                      //     return null;
                      //   }
                      // },
                      controller: searchController,
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: GoogleFonts.rubik(
                          color: Color(0xFfB1B1B1),
                          fontSize: 14,
                        ),
                        contentPadding: EdgeInsets.only(
                          left: 16,
                          top: 5,
                          bottom: 5,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellow),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF010101),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: borderColor,
                            width: 0.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Image(
                    height: 44,
                    width: 44,
                    image: AssetImage('assets/images/btn_search.png'),
                  ),
                ],
              ),
            ),
          
          ),
          Positioned(
            top: 50,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ListView(
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 18,
                  top: 16,
                  bottom: 10,
                ),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(width: 0.5, color: colorRed),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff003f51).withOpacity(0.1),
                          offset: Offset(
                            0,
                            4,
                          ),
                          blurRadius: 10,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 9,
                            width: 9,
                            decoration: BoxDecoration(
                              color: colorRed,
                              borderRadius: BorderRadius.circular(2),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff003f51).withOpacity(0.1),
                                  offset: Offset(
                                    0,
                                    4,
                                  ),
                                  blurRadius: 10,
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Emergency',
                            style: GoogleFonts.rubik(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(width: 0.5, color: color),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff003f51).withOpacity(0.1),
                            offset: Offset(
                              0,
                              4,
                            ),
                            blurRadius: 10,
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 10,
                          bottom: 10,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 9,
                              width: 9,
                              decoration: BoxDecoration(
                                color: color,
                                borderRadius: BorderRadius.circular(2),
                                boxShadow: [
                                  BoxShadow(
                                    color: color.withOpacity(0.1),
                                    offset: Offset(
                                      0,
                                      4,
                                    ),
                                    blurRadius: 10,
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 6),
                            Text(
                              'Clinic',
                              style: GoogleFonts.rubik(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(width: 0.5, color: colorYellow),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff003f51).withOpacity(0.1),
                          offset: Offset(
                            0,
                            4,
                          ),
                          blurRadius: 10,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 9,
                            width: 9,
                            decoration: BoxDecoration(
                              color: colorYellow,
                              borderRadius: BorderRadius.circular(2),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff003f51).withOpacity(0.1),
                                  offset: Offset(
                                    0,
                                    4,
                                  ),
                                  blurRadius: 10,
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Dentist',
                            style: GoogleFonts.rubik(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(width: 0.5, color: colorPurple),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff003f51).withOpacity(0.1),
                          offset: Offset(
                            0,
                            4,
                          ),
                          blurRadius: 10,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 9,
                            width: 9,
                            decoration: BoxDecoration(
                              color: colorPurple,
                              borderRadius: BorderRadius.circular(2),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff003f51).withOpacity(0.1),
                                  offset: Offset(
                                    0,
                                    4,
                                  ),
                                  blurRadius: 10,
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Physiotherapy',
                            style: GoogleFonts.rubik(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SlidingUpPanel(
            minHeight: 180,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            maxHeight: MediaQuery.of(context).size.height / 1.7,
            panel: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 53,
                      height: 5,
                      decoration: BoxDecoration(
                          color: Color(0xFF010101).withOpacity(0.09),
                          borderRadius: BorderRadius.circular(2.5)),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Corburg Medical Clinic',
                    style: GoogleFonts.rubik(
                      color: colorBlack,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                            color: color,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Image(
                          height: 75,
                          width: 75,
                          image: AssetImage(
                              'assets/images/Img_signin_corporateuser.png'),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '31 Oakland St, Maribyrnong VIC 3032 \nAustralia',
                            style: GoogleFonts.rubik(
                              color: Color(0xFF747474),
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 45),
                                decoration: BoxDecoration(
                                  color: Color(0xFF0CBCC5),
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: Text(
                                  'Call',
                                  style: GoogleFonts.rubik(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    border: Border.all(
                                      width: 0.5,
                                      color: color,
                                    )),
                                child: Text(
                                  'Get Directions',
                                  style: GoogleFonts.rubik(
                                    color: color,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Color(0xFF0cbcc5).withOpacity(0.2),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Opening hours',
                    style: GoogleFonts.rubik(
                      color: colorBlack,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Monday',
                                style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  color: Color(0xFF696969),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Text(
                                'Tuesday',
                                style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  color: Color(0xFF696969),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Text(
                                'Wednesday',
                                style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  color: Color(0xFF696969),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Text(
                                'Thursday',
                                style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  color: Color(0xFF696969),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Text(
                                'Friday',
                                style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  color: Color(0xFF696969),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Text(
                                'Saturday',
                                style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  color: Color(0xFF696969),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Text(
                                'Sunday',
                                style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  color: Color(0xFF696969),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 38,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '9:00 AM - 7:00 PM',
                                style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  color: Color(0xFF5E5E5E),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Text(
                                '9:00 AM - 7:00 PM',
                                style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  color: Color(0xFF5E5E5E),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Text(
                                '9:00 AM - 7:00 PM',
                                style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  color: Color(0xFF5E5E5E),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Text(
                                '9:00 AM - 7:00 PM',
                                style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  color: Color(0xFF5E5E5E),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Text(
                                '9:00 AM - 7:00 PM',
                                style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  color: Color(0xFF5E5E5E),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Text(
                                '9:00 AM - 7:00 PM',
                                style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  color: Color(0xFF5E5E5E),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 11,
                              ),
                              Text(
                                '9:00 AM - 7:00 PM',
                                style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  color: Color(0xFF5E5E5E),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
