import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/miaid_card.dart';
import 'package:miaid/component/payment_bootomsheet.dart';
import 'package:miaid/view/user/home_screen.dart';

import 'card_details.dart';
import 'payment_interface.dart';

class AdditionalServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            child: Image(
              image: AssetImage("assets/images/NavBar/ic_nb_back.png"),
            ),
          ),
          centerTitle: true,
          title: Text(
            "Other MiAid Services",
            style: GoogleFonts.rubik(
              color: Color(0xff010101),
              fontSize: 15,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 5),
          child: ListView.builder(
            itemCount: 3,
            physics: ClampingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            itemBuilder: (BuildContext context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                miAidCard(Padding(
                  padding: const EdgeInsets.fromLTRB(16, 15, 12, 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Additional Video Consultations',
                          style: GoogleFonts.rubik(
                            color: Color(0xff010101),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          )),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        "Description with features goes here, Lorem ipsum dolor sit amet, consectetur adipisicing elit consectetur adipisicing",
                        style: GoogleFonts.rubik(
                          color: Color(0xff5E5E5E),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xffF4F4F4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(7, 9, 7, 9),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("A\$ "),
                                Text(
                                  "20.0",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        trailing: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                backgroundColor: Colors.white,
                                context: context,
                                isDismissible: true,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16)),
                                ),
                                builder: (BuildContext context) =>
                                    PaymentBottomSheet());
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Color(0xff0CBCC5),
                            ),
                            child: Text(
                              "Get This Service",
                              style: GoogleFonts.rubik(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
