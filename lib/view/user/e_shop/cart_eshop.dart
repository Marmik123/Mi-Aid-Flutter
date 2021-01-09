import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/miaid_card.dart';
import 'package:miaid/component/payment_bootomsheet.dart';
import 'package:miaid/view/drawer/Terms&Cond.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/config/app_colors.dart';

class CartEShop extends StatefulWidget {
  @override
  _CartEShopState createState() => _CartEShopState();
}

class _CartEShopState extends State<CartEShop> {
  int value_1;
  int value_2;
  int quentity = 1;
  bool remove = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          !remove
              ? FlatButton(
                  onPressed: () {
                    setState(() {
                      remove = true;
                    });
                  },
                  child: Text(
                    S.of(context).remove,
                    style: GoogleFonts.rubik(
                      color: AppColors.kfa0020,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.41,
                    ),
                  ),
                )
              : FlatButton(
                  onPressed: () {
                    setState(() {
                      remove = false;
                    });
                  },
                  child: Text(
                    S.of(context).done,
                    style: GoogleFonts.rubik(
                      color: AppColors.k0cbcc5,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.41,
                    ),
                  ),
                ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image(
            image: AssetImage("assets/images/NavBar/ic_nb_back.png"),
          ),
        ),
        centerTitle: true,
        title: Text(
          S.of(context).cart,
          style: GoogleFonts.rubik(
            color: AppColors.k010101,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      S.of(context).orderNumber,
                      style: GoogleFonts.rubik(
                        color: AppColors.k5e5e5e,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      " 0000012 ",
                      style: GoogleFonts.rubik(
                        color: AppColors.k010101,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (BuildContext context, index) => Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      miAidCard(
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 12, 16, 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Market City Pharmacy',
                                style: GoogleFonts.rubik(
                                  color: AppColors.k5e5e5e,
                                  fontSize: 14,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      height: 70,
                                      width: 70,
                                      image: AssetImage(
                                          'assets/images/panadol.png'),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                          right: 16,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 14,
                                              ),
                                              child: Text(
                                                  "Panadol Rapid Parace Panadol Rapid Paracetamol Pain Relief Caplets 500 mg",
                                                  style: GoogleFonts.rubik(
                                                    color: AppColors.k010101,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                            ),
                                            /*SizedBox(
                                                height: 18,
                                              ),*/
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    color: AppColors.kf4f4f4,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      left: 7,
                                                      right: 7,
                                                      top: 3,
                                                      bottom: 2,
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text("A\$ "),
                                                        Text(
                                                          "20.0",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                remove
                                                    ? InkWell(
                                                        onTap: () =>
                                                            showAlertDialog(
                                                                context),
                                                        child: Image.asset(
                                                            'assets/images/btn_medicine_removeitem.png'),
                                                      )
                                                    : Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                if (quentity >
                                                                    1) {
                                                                  quentity--;
                                                                }
                                                              });
                                                            },
                                                            child:
                                                                buttonContainer(
                                                              Image.asset(quentity <=
                                                                      1
                                                                  ? "assets/images/btn_medicine_quantity_minus_disabled.png"
                                                                  : 'assets/images/btn_medicine_quantity_minus.png'),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 15,
                                                                    right: 15),
                                                            child: Text(
                                                              "$quentity",
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff010101),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                quentity++;
                                                              });
                                                            },
                                                            child:
                                                                buttonContainer(
                                                              Image.asset(
                                                                  "assets/images/btn_medicine_quantity_add.png"),
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
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
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).deliveryOption,
                      style: GoogleFonts.rubik(
                        color: AppColors.k010101,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    radiobuttonContainer(Row(
                      children: [
                        Radio(
                          // focusColor: AppColors.k0cbcc5,
                          value: 0,
                          groupValue: value_1,
                          onChanged: (value) {
                            setState(() {
                              value_1 = value;
                            });
                          },
                          activeColor: AppColors.k0cbcc5,
                          toggleable: true,
                        ),
                        Text(
                          S.of(context).delivery,
                          style: GoogleFonts.rubik(
                            color: AppColors.k5e5e5e,
                            fontSize: 14,
                          ),
                        )
                      ],
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    radiobuttonContainer(Row(
                      children: [
                        Radio(
                          activeColor: AppColors.k0cbcc5,
                          value: 1,
                          groupValue: value_2,
                          onChanged: (value) {
                            setState(() {
                              value_2 = value;
                            });
                          },
                          toggleable: true,
                        ),
                        Text(
                          S.of(context).inStore,
                          style: GoogleFonts.rubik(
                            color: AppColors.k5e5e5e,
                            fontSize: 14,
                          ),
                        )
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      S.of(context).orderSummary,
                      style: GoogleFonts.rubik(
                        color: AppColors.k010101,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.of(context).subTotal,
                          style: GoogleFonts.rubik(
                            color: AppColors.k010101,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "A\$ 20.0",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.of(context).deliveryFees,
                          style: GoogleFonts.rubik(
                            color: AppColors.k010101,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "A\$ 20.0",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage(
                              "assets/images/ic_cart_checkbox_normal.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 1,
                          ),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: GoogleFonts.rubik(
                                color: AppColors.k5e5e5e,
                                fontSize: 12,
                              ),
                              children: [
                                TextSpan(text: S.of(context).bySubmit),
                                TextSpan(
                                  text: S.of(context).tandc,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              TermsConditions(),
                                        ),
                                      );
                                    },
                                  style: GoogleFonts.rubik(
                                    color: AppColors.k0cbcc5,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(
            color: AppColors.k010101,
            height: 0,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      S.of(context).orderTotal,
                      style: GoogleFonts.rubik(
                        color: AppColors.k010101,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "  A\$ 20.0",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                FlatButton(
                  color: AppColors.k0cbcc5,
                  onPressed: () {
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
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 44,
                      right: 44,
                      top: 13,
                      bottom: 12,
                    ),
                    child: Text(
                      S.of(context).checkout,
                      style: GoogleFonts.rubik(
                        color: AppColors.kffffff,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

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
                setState(() {
                  remove = false;
                });
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
                //Navigator.pop(context);
              },
              child: Text(
                S.of(context).remove,
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
        S.of(context).remove,
        textAlign: TextAlign.center,
        style: GoogleFonts.rubik(
            color: AppColors.k010101, fontWeight: FontWeight.w700),
      ),
      content: Text(
        S.of(context).removeAlertMessage,
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
}
