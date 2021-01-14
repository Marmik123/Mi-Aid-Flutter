import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/miaid_card.dart';
import 'package:miaid/component/nav_bar_icons.dart';
import 'package:miaid/config/app_colors.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/view/user/e_shop/cart_eshop.dart';
import 'package:miaid/view/user/e_shop/product_details.dart';
import 'package:miaid/view/user/e_shop/purchase.dart';

class ProductCategoryDetails extends StatefulWidget {
  @override
  _ProductCategoryDetailsState createState() => _ProductCategoryDetailsState();
}

class _ProductCategoryDetailsState extends State<ProductCategoryDetails> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kffffff,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.kffffff,
        centerTitle: true,
        title: Text(
          S.of(context).eShop,
          style: GoogleFonts.rubik(
            color: AppColors.k010101,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: navBarIcon(iconAssetName: 'ic_nb_back.png'),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 13,
            ),
            child: Container(
              alignment: Alignment.centerRight,
              height: 36,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => PurchaseItem(),
                        ),
                      );
                    },
                    child: navBarIcon(iconAssetName: 'ic_nb_purchases.png'),
                  ),
                  SizedBox(
                    width: 23,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => CartEShop(),
                        ),
                      );
                    },
                    child: navBarIcon(iconAssetName: 'ic_nb_cart_normal.png'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Color.fromRGBO(90, 177, 255, 0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Market City Pharmacy',
                        style: GoogleFonts.rubik(
                          color: AppColors.k010101,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        )),
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
                            image: AssetImage('assets/images/panadol.png'),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                right: 5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 14,
                                    ),
                                    child: Text(
                                      '34 Clarfield, Clayton, VIC 3168,\nAustralia.',
                                      style: GoogleFonts.rubik(
                                        color: AppColors.k747474,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            S.of(context).open,
                                            style: GoogleFonts.rubik(
                                              color: AppColors.k25d000,
                                              fontSize: 14,
                                            ),
                                          ),
                                          Text(
                                            '(9:00 AM - 7:00 PM)',
                                            style: GoogleFonts.rubik(
                                              color: AppColors.kb1b1b1,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image(
                                            image: AssetImage(
                                                'assets/images/btn_pharmacy_web.png'),
                                          ),
                                          Image(
                                            image: AssetImage(
                                                'assets/images/btn_pharmacy_phone.png'),
                                          ),
                                        ],
                                      ),
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
            Container(
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
                      //   if (value.trim().isEmpty) {
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
                        hintText: S.of(context).search,
                        hintStyle: GoogleFonts.rubik(
                          color: AppColors.kb1b1b1,
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
                            color: AppColors.k010101,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: AppColors.kb1b1b1,
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
            Container(
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
                      color: AppColors.k0cbcc5,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(width: 0.5, color: AppColors.k0cbcc5),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.k003f51.withOpacity(0.1),
                          offset: Offset(
                            0,
                            4,
                          ),
                          blurRadius: 10,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      // top: 10,
                      // bottom: 10,
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Text(
                          S.of(context).allCategories,
                          style: GoogleFonts.rubik(
                            color: AppColors.kffffff,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.kffffff,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(width: 0.5, color: AppColors.k0cbcc5),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.k003f51.withOpacity(0.1),
                          offset: Offset(
                            0,
                            4,
                          ),
                          blurRadius: 10,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      // top: 10,
                      // bottom: 10,
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Text(
                          'Category 2',
                          style: GoogleFonts.rubik(
                            color: AppColors.k0cbcc5,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.kffffff,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(width: 0.5, color: AppColors.k0cbcc5),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.k003f51.withOpacity(0.1),
                          offset: Offset(
                            0,
                            4,
                          ),
                          blurRadius: 10,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      // top: 10,
                      // bottom: 10,
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Text(
                          'Category 3',
                          style: GoogleFonts.rubik(
                            color: AppColors.k0cbcc5,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.kffffff,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(width: 0.5, color: AppColors.k0cbcc5),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.k003f51.withOpacity(0.1),
                          offset: Offset(
                            0,
                            4,
                          ),
                          blurRadius: 10,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      // top: 10,
                      // bottom: 10,
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Text(
                          'Category 4',
                          style: GoogleFonts.rubik(
                            color: AppColors.k0cbcc5,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.kffffff,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(width: 0.5, color: AppColors.k0cbcc5),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.k003f51.withOpacity(0.1),
                          offset: Offset(
                            0,
                            4,
                          ),
                          blurRadius: 10,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      // top: 10,
                      // bottom: 10,
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Text(
                          'Category 5',
                          style: GoogleFonts.rubik(
                            color: AppColors.k0cbcc5,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 23, left: 21),
              child: Text(
                'Category 1',
                style: GoogleFonts.rubik(
                  color: AppColors.k010101,
                  letterSpacing: 0.37,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
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
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 16,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => ProductDetails(),
                          ),
                        );
                      },
                      child: miAidCard(
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 13, 10, 13),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    height: 70,
                                    width: 70,
                                    image:
                                        AssetImage('assets/images/panadol.png'),
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
                                                'Panadol Rapid Parace Panadol Rapid Paracetamol Pain Relief Caplets 500 mg',
                                                style: GoogleFonts.rubik(
                                                  color: AppColors.k010101,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
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
                                                      Text('A\$ '),
                                                      Text(
                                                        '20.0',
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
                                              Container(
                                                height: 28,
                                                child: FlatButton(
                                                  splashColor: AppColors.k0cbcc5
                                                      .withOpacity(0.1),
                                                  highlightColor: AppColors
                                                      .k0cbcc5
                                                      .withOpacity(0.2),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            9),
                                                    side: BorderSide(
                                                      color: AppColors.k30bee6,
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                  color: AppColors.kffffff,
                                                  onPressed: () {
                                                    // Navigator.push(
                                                    //   context,
                                                    //   MaterialPageRoute<void>(
                                                    //     builder: (context) => SignUp(),
                                                    //   ),
                                                    // );
                                                  },
                                                  child: Text(
                                                    S.of(context).addToCart,
                                                    style: GoogleFonts.rubik(
                                                      color: AppColors.k0cbcc5,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 23, left: 21),
              child: Text(
                'Category 2',
                style: GoogleFonts.rubik(
                  color: AppColors.k010101,
                  letterSpacing: 0.37,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
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
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 16,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => ProductDetails(),
                          ),
                        );
                      },
                      child: miAidCard(
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 13, 10, 13),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    height: 70,
                                    width: 70,
                                    image:
                                        AssetImage('assets/images/panadol.png'),
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
                                                'Panadol Rapid Parace Panadol Rapid Paracetamol Pain Relief Caplets 500 mg',
                                                style: GoogleFonts.rubik(
                                                  color: AppColors.k010101,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
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
                                                      Text('A\$ '),
                                                      Text(
                                                        '20.0',
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
                                              Container(
                                                height: 28,
                                                child: FlatButton(
                                                  splashColor: AppColors.k0cbcc5
                                                      .withOpacity(0.1),
                                                  highlightColor: AppColors
                                                      .k0cbcc5
                                                      .withOpacity(0.2),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            9),
                                                    side: BorderSide(
                                                      color: AppColors.k30bee6,
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                  color: AppColors.kffffff,
                                                  onPressed: () {
                                                    // Navigator.push(
                                                    //   context,
                                                    //   MaterialPageRoute<void>(
                                                    //     builder: (context) => SignUp(),
                                                    //   ),
                                                    // );
                                                  },
                                                  child: Text(
                                                    'Add to Cart',
                                                    style: GoogleFonts.rubik(
                                                      color: AppColors.k0cbcc5,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
