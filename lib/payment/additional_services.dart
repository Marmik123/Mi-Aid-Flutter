import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/miaid_card.dart';
import 'package:miaid/view/user/home_screen.dart';

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
            child: Icon(
              Icons.arrow_back_sharp,
              size: 20,
              color: Color(0xff0CBCC5),
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Additional Video Consultations',
                          style: GoogleFonts.rubik(
                            color: Color(0xff010101),
                            fontSize: 18,
                          )),
                      Text(
                        "Description with features goes here, Lorem ipsum dolor sit amet, consectetur adipisicing elit consectetur adipisicing",
                        style: GoogleFonts.rubik(
                          color: Color(0xff5E5E5E),
                          fontSize: 14,
                        ),
                      ),
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xffF4F4F4),
                          ),
                          child: Row(
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
                                builder: (BuildContext context) => Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          child: Text("Choose a Payment Method",
                                              style: GoogleFonts.rubik(
                                                color: Color(0xff010101),
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500,
                                              )),
                                        ),
                                        Divider(
                                          color: Color(0xff010101),
                                          height: 0,
                                          thickness: 0,
                                        ),
                                        ListTile(
                                          leading: Image(
                                            image: AssetImage(
                                                "assets/images/ic_payment_paypal.png"),
                                            alignment: Alignment.center,
                                          ),
                                          title: Text("PayPal",
                                              style: GoogleFonts.rubik(
                                                color: Color(0xff010101),
                                                fontSize: 14,
                                              )),
                                          // contentPadding: EdgeInsets.zero,
                                          dense: true,
                                          onTap: () {},
                                        ),
                                        Divider(
                                          color: Color(0xff010101),
                                        ),
                                        ListTile(
                                          leading: Image(
                                            image: AssetImage(
                                                "assets/images/ic_payment_wechatpay.png"),
                                          ),

                                          title: Text("Wechat Pay",
                                              style: GoogleFonts.rubik(
                                                color: Color(0xff010101),
                                                fontSize: 14,
                                              )),
                                          // contentPadding: EdgeInsets.zero,
                                          dense: true,
                                          onTap: () {},
                                        ),
                                        Divider(
                                          color: Color(0xff010101),
                                          height: 1,
                                        ),
                                        ListTile(
                                          leading: Image(
                                            image: AssetImage(
                                                "assets/images/ic_payment_allpay.png"),
                                          ),
                                          title: Text("Allpay",
                                              style: GoogleFonts.rubik(
                                                color: Color(0xff010101),
                                                fontSize: 14,
                                              )),
                                          // contentPadding: EdgeInsets.zero,
                                          dense: true,
                                          onTap: () {},
                                        ),
                                        Divider(
                                          color: Color(0xff010101),
                                          height: 1,
                                        ),
                                        ListTile(
                                          leading: Image(
                                            image: AssetImage(
                                                "assets/images/ic_payment_card.png"),
                                          ),

                                          title: Text("Credit or Debit Card",
                                              style: GoogleFonts.rubik(
                                                color: Color(0xff010101),
                                                fontSize: 14,
                                              )),
                                          // contentPadding: EdgeInsets.zero,
                                          dense: true,
                                          onTap: () {},
                                        )
                                      ],
                                    ));
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
