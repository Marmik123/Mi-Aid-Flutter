import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/payment/card_details.dart';
import 'package:miaid/payment/payment_interface.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/config/app_colors.dart';

class PaymentBottomSheet extends StatefulWidget {
  @override
  _PaymentBottomSheetState createState() => _PaymentBottomSheetState();
}

class _PaymentBottomSheetState extends State<PaymentBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 15),
          child: Container(
            child: Text(S.of(context).chooseAPayment,
                style: GoogleFonts.rubik(
                  color: AppColors.k010101,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                )),
          ),
        ),
        Divider(
          color: AppColors.k010101,
          height: 0,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: ListTile(
            leading: Image(
              image: AssetImage("assets/images/ic_payment_paypal.png"),
              alignment: Alignment.center,
            ),
            title: Text(S.of(context).paypal,
                style: GoogleFonts.rubik(
                  color: AppColors.k010101,
                  fontSize: 14,
                )),
            // contentPadding: EdgeInsets.zero,
            dense: true,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PaymentInterface()));
            },
          ),
        ),
        Divider(
          color: AppColors.k010101,
          height: 0,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: ListTile(
            leading: Image(
              image: AssetImage("assets/images/ic_payment_wechatpay.png"),
            ),

            title: Text(S.of(context).wechatPay,
                style: GoogleFonts.rubik(
                  color: AppColors.k010101,
                  fontSize: 14,
                )),
            // contentPadding: EdgeInsets.zero,
            dense: true,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PaymentInterface()));
            },
          ),
        ),
        Divider(
          color: AppColors.k010101,
          height: 0,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: ListTile(
            leading: Image(
              image: AssetImage("assets/images/ic_payment_allpay.png"),
            ),
            title: Text(S.of(context).allpay,
                style: GoogleFonts.rubik(
                  color: AppColors.k010101,
                  fontSize: 14,
                )),
            // contentPadding: EdgeInsets.zero,
            dense: true,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PaymentInterface()));
            },
          ),
        ),
        Divider(
          color: AppColors.k010101,
          height: 0,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: ListTile(
            leading: Image(
              image: AssetImage("assets/images/ic_payment_card.png"),
            ),

            title: Text(S.of(context).creditOrDebit,
                style: GoogleFonts.rubik(
                  color: AppColors.k010101,
                  fontSize: 14,
                )),
            // contentPadding: EdgeInsets.zero,
            dense: true,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CardDetails()));
            },
          ),
        ),
        Divider(
          color: AppColors.k010101,
          height: 0,
        ),
      ],
    );
  }
}
