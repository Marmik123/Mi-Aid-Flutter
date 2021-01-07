import 'package:flutter/material.dart';
import 'package:miaid/component/miaid_card.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/cupertino.dart';
import 'package:miaid/view/user/e_shop/purchase.dart';
import 'package:miaid/view/user/e_shop/cart_eshop.dart';
import 'package:miaid/view/user/e_shop/product_details.dart';

class ProductCategoryDetails extends StatefulWidget {
  @override
  _ProductCategoryDetailsState createState() => _ProductCategoryDetailsState();
}

class _ProductCategoryDetailsState extends State<ProductCategoryDetails> {
  TextEditingController searchController = TextEditingController();

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'E - Shop',
          style: GoogleFonts.rubik(
            color: Color(0xFF010101),
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
              child: Image(
                image: AssetImage('assets/images/NavBar/ic_nb_back.png'),
              ),
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
                        MaterialPageRoute(
                          builder: (context) => PurchaseItem(),
                        ),
                      );
                    },
                    child: Image(
                      image: AssetImage(
                          'assets/images/NavBar/ic_nb_purchases.png'),
                    ),
                  ),
                  SizedBox(
                    width: 23,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartEShop(),
                        ),
                      );
                    },
                    child: Image(
                      image: AssetImage(
                          'assets/images/NavBar/ic_nb_cart_normal.png'),
                    ),
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
                          color: colorBlack,
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
                                    image:
                                        AssetImage('assets/images/panadol.png'),
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
                                        color: Color(0xff747474),
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
                                            'Open',
                                            style: GoogleFonts.rubik(
                                              color: Color(0xFF25D000),
                                              fontSize: 14,
                                            ),
                                          ),
                                          Text(
                                            '(9:00 AM - 7:00 PM)',
                                            style: GoogleFonts.rubik(
                                              color: Color(0xFFB1B1B1),
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
                      //   if (value.trim().length == 0) {
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
                        hintText: 'Search',
                        hintStyle: GoogleFonts.rubik(
                          color: Color(0xFfB1B1B1),
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
                            color: Color(0xFF010101),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: borderColor,
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
                      color: color,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(width: 0.5, color: color),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff003f51).withOpacity(0.1),
                          offset: Offset(
                            0,
                            4,
                          ),
                          blurRadius: 10,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'All Categories',
                            style: GoogleFonts.rubik(
                              color: colorWhite,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(width: 0.5, color: color),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff003f51).withOpacity(0.1),
                          offset: Offset(
                            0,
                            4,
                          ),
                          blurRadius: 10,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Category 2',
                            style: GoogleFonts.rubik(
                              color: color,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(width: 0.5, color: color),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff003f51).withOpacity(0.1),
                          offset: Offset(
                            0,
                            4,
                          ),
                          blurRadius: 10,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Category 3',
                            style: GoogleFonts.rubik(
                              color: color,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(width: 0.5, color: color),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff003f51).withOpacity(0.1),
                          offset: Offset(
                            0,
                            4,
                          ),
                          blurRadius: 10,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Category 4',
                            style: GoogleFonts.rubik(
                              color: color,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(width: 0.5, color: color),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff003f51).withOpacity(0.1),
                          offset: Offset(
                            0,
                            4,
                          ),
                          blurRadius: 10,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Category 5',
                            style: GoogleFonts.rubik(
                              color: color,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
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
                  color: colorBlack,
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
                          MaterialPageRoute(
                            builder: (context) => ProductDetails(),
                          ),
                        );
                      },
                      child: miAidCard(
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 12, 16, 16),
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
                                                "Panadol Rapid Parace Panadol Rapid Paracetamol Pain Relief Caplets 500 mg",
                                                style: GoogleFonts.rubik(
                                                  color: Color(0xff010101),
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
                                                  color: Color(0xffF4F4F4),
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
                                              Container(
                                                height: 28,
                                                child: FlatButton(
                                                  splashColor:
                                                      color.withOpacity(0.1),
                                                  highlightColor:
                                                      color.withOpacity(0.2),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            9),
                                                    side: BorderSide(
                                                      color: Color(0xFF30BEE6),
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                  color: Color(0xFFFFFFFF),
                                                  onPressed: () {
                                                    // Navigator.push(
                                                    //   context,
                                                    //   MaterialPageRoute(
                                                    //     builder: (context) => SignUp(),
                                                    //   ),
                                                    // );
                                                  },
                                                  child: Text(
                                                    'Add to Cart',
                                                    style: GoogleFonts.rubik(
                                                      color: Color(0xFF0CBCC5),
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
                  color: colorBlack,
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
                          MaterialPageRoute(
                            builder: (context) => ProductDetails(),
                          ),
                        );
                      },
                      child: miAidCard(
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 12, 16, 16),
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
                                                "Panadol Rapid Parace Panadol Rapid Paracetamol Pain Relief Caplets 500 mg",
                                                style: GoogleFonts.rubik(
                                                  color: Color(0xff010101),
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
                                                  color: Color(0xffF4F4F4),
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
                                              Container(
                                                height: 28,
                                                child: FlatButton(
                                                  splashColor:
                                                      color.withOpacity(0.1),
                                                  highlightColor:
                                                      color.withOpacity(0.2),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            9),
                                                    side: BorderSide(
                                                      color: Color(0xFF30BEE6),
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                  color: Color(0xFFFFFFFF),
                                                  onPressed: () {
                                                    // Navigator.push(
                                                    //   context,
                                                    //   MaterialPageRoute(
                                                    //     builder: (context) => SignUp(),
                                                    //   ),
                                                    // );
                                                  },
                                                  child: Text(
                                                    'Add to Cart',
                                                    style: GoogleFonts.rubik(
                                                      color: Color(0xFF0CBCC5),
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
