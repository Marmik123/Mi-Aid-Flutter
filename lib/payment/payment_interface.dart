import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'additional_services.dart';
import 'package:miaid/config/app_colors.dart';

class PaymentInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AdditionalServices()));
          },
          child: Image(
            image: AssetImage("assets/images/NavBar/ic_nb_back.png"),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Payment",
          style: GoogleFonts.rubik(
            color: AppColors.k010101,
            fontSize: 15,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 95, vertical: 20),
        child: Center(
            child: Text(
          "Paypal, Braintree, Stripe, Wechat, allpay payment interface will appear here",
          style: GoogleFonts.rubik(
            color: AppColors.kb1b1b1,
            fontSize: 21,
            letterSpacing: -0.13,
          ),
        )),
      ),
    );
  }
}
