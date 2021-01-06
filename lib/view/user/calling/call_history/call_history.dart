import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/miaid_card.dart';
import 'package:miaid/component/drawer.dart';
// //import 'package:miaid/payment/additional_services.dart';
// //import 'package:miaid/payment/card_details.dart';
// //import 'package:miaid/payment/payment_interface.dart';
// import 'package:miaid/view/drawer/Terms&Cond.dart';
// import 'package:miaid/view/drawer/about.dart';
// import 'package:miaid/view/drawer/privacy&policy.dart';
// //import 'package:miaid/view/user/calling/call_micure_assistant.dart';
// //import 'package:miaid/view/user/e_shop/cart_eshop.dart';
import 'package:miaid/view/user/sign_In_view/signIn.dart';
// import 'package:miaid/view/user/travel_care_packages/Travel_care_packages.dart';
// import 'package:miaid/view/user/user_profile_screen/user_profile.dart';
// import 'package:miaid/view/user/home_screen.dart';
import './callViewReceipt.dart';

class CallHistory extends StatefulWidget {
  @override
  _CallHistoryState createState() => _CallHistoryState();
}

class _CallHistoryState extends State<CallHistory> {
  DateTime _dateTime = DateTime.now();
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

  Widget cupertinoDatePicker(context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: GoogleFonts.rubik(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Color.fromRGBO(12, 188, 197, 1)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Done',
                    style: GoogleFonts.rubik(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(12, 188, 197, 1)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            child: CupertinoDatePicker(
              initialDateTime: _dateTime,
              maximumYear: DateTime.now().year,
              minimumYear: 1930,
              use24hFormat: false,
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (dateTime) {
                setState(() {
                  _dateTime = dateTime;
                  print(_dateTime);
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Call History',
          style: GoogleFonts.rubik(
            color: colorBlack,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                //expand: false,

                context: context,
                builder: (context) => cupertinoDatePicker(context),
              );
            },
            child:
                Image.asset('assets/images/NavBar/ic_nb_callhistory_date.png'),
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
      drawer: Drawers(),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(90, 177, 255, 0.1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        DateTime.now().toString(),
                        style: GoogleFonts.rubik(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '28 Mins',
                        style: GoogleFonts.rubik(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('MiAid Assistant',
                              style: GoogleFonts.rubik(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Color.fromRGBO(
                                  94,
                                  94,
                                  94,
                                  1,
                                ),
                              )),
                          Text(
                            'Lydia Robert',
                            style: GoogleFonts.rubik(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: colorBlack,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Doctor',
                              style: GoogleFonts.rubik(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Color.fromRGBO(
                                  94,
                                  94,
                                  94,
                                  1,
                                ),
                              )),
                          Text(
                            'Bertha Morton',
                            style: GoogleFonts.rubik(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: colorBlack,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Translator',
                              style: GoogleFonts.rubik(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Color.fromRGBO(
                                  94,
                                  94,
                                  94,
                                  1,
                                ),
                              )),
                          Text(
                            'Bertie Cross',
                            style: GoogleFonts.rubik(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: colorBlack,
                            ),
                          ),
                        ],
                      ),
                      FlatButton(
                        splashColor: color.withOpacity(0.1),
                        highlightColor: color.withOpacity(0.2),
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                          side: BorderSide(
                            color: Color(0xFF30BEE6),
                          ),
                        ),
                        color: Color(0xFFFFFFFF),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CallViewReceipt(),
                            ),
                          );
                        },
                        child: Text(
                          'View Receipt',
                          style: GoogleFonts.rubik(
                            color: Color.fromRGBO(12, 188, 197, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
