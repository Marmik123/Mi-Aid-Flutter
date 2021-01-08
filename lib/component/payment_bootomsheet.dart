import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/payment/card_details.dart';
import 'package:miaid/payment/payment_interface.dart';
class PaymentBottomSheet extends StatefulWidget {
  @override
  _PaymentBottomSheetState createState() => _PaymentBottomSheetState();
}

class _PaymentBottomSheetState extends State<PaymentBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return  Column(
                                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20, bottom: 15),
                                          child: Container(
                                            child: Text(
                                                "Choose a Payment Method",
                                                style: GoogleFonts.rubik(
                                                  color: Color(0xff010101),
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          ),
                                        ),
                                        Divider(
                                          color: Color(0xff010101),
                                          height: 0,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 10),
                                          child: ListTile(
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
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          PaymentInterface()));
                                            },
                                          ),
                                        ),
                                        Divider(
                                          color: Color(0xff010101),
                                          height: 0,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 10),
                                          child: ListTile(
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
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          PaymentInterface()));
                                            },
                                          ),
                                        ),
                                        Divider(
                                          color: Color(0xff010101),
                                          height: 0,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 10),
                                          child: ListTile(
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
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          PaymentInterface()));
                                            },
                                          ),
                                        ),
                                        Divider(
                                          color: Color(0xff010101),
                                          height: 0,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 10),
                                          child: ListTile(
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
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          CardDetails()));
                                            },
                                          ),
                                        ),
                                        Divider(
                                          color: Color(0xff010101),
                                          height: 0,
                                        ),
                                      ],
                                    );

  }
}