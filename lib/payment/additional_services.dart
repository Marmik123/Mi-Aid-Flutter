import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/miaid_card.dart';
import 'package:miaid/component/nav_bar_icons.dart';
import 'package:miaid/component/payment_bootomsheet.dart';
import 'package:miaid/config/app_colors.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/view/user/home_screen.dart';

class AdditionalServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.kffffff,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => HomeScreen(),
                  ));
            },
            child: navBarIcon(iconAssetName: 'ic_nb_back.png'),
          ),
          centerTitle: true,
          title: Text(
            S.of(context).otherService,
            style: GoogleFonts.rubik(
              color: AppColors.k010101,
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
                            color: AppColors.k010101,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          )),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        'Description with features goes here, Lorem ipsum dolor sit amet, consectetur adipisicing elit consectetur adipisicing',
                        style: GoogleFonts.rubik(
                          color: AppColors.k5e5e5e,
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
                            color: AppColors.kf4f4f4,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(7, 9, 7, 9),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('A\$ '),
                                Text(
                                  '20.0',
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
                              color: AppColors.k0cbcc5,
                            ),
                            child: Text(
                              S.of(context).getthisService,
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
