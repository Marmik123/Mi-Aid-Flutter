import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:miaid/component/miaid_card.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/config/app_colors.dart';
import 'package:miaid/view/user/sign_In_view/sign_In.dart';
import 'package:miaid/component/drawer.dart';
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
                  MaterialPageRoute(
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

    AlertDialog alert = AlertDialog(
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
                    S.of(context).cancel,
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
                    S.of(context).done,
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
          S.of(context).callHistory,
          style: GoogleFonts.rubik(
            color: AppColors.k010101,
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
      drawer: drawer(context),
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
                          Text(S.of(context).assistant,
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
                              color: AppColors.k010101,
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
                          Text(S.of(context).doctor,
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
                              color: AppColors.k010101,
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
                          Text(S.of(context).tranlator,
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
                              color: AppColors.k010101,
                            ),
                          ),
                        ],
                      ),
                      FlatButton(
                        splashColor: AppColors.k0cbcc5.withOpacity(0.1),
                        highlightColor: AppColors.k0cbcc5.withOpacity(0.2),
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                          side: BorderSide(
                            color: AppColors.k30bee6,
                          ),
                        ),
                        color: AppColors.kffffff,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CallViewReceipt(),
                            ),
                          );
                        },
                        child: Text(
                          S.of(context).viewReceipt,
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
