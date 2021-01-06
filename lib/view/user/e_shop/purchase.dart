import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/miaid_card.dart';
import 'package:miaid/view/user/e_shop/purchase_view_receipt.dart';

class PurchaseItem extends StatefulWidget {
  @override
  _PurchaseItemState createState() => _PurchaseItemState();
}

class _PurchaseItemState extends State<PurchaseItem> {
  bool _expand = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          "Purchases",
          style: GoogleFonts.rubik(
            color: colorBlack,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    bottom: 17,
                    left: 19,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Pharmacy Name',
                              style: GoogleFonts.rubik(
                                color: colorBlack,
                                fontSize: 18,
                              )),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _expand = !_expand;
                              });
                            },
                            child: _expand
                                ? Image.asset(
                                    'assets/images/ic_pharmacy_location_collapse.png')
                                : Image.asset(
                                    'assets/images/ic_pharmacy_location_expand.png'),
                          ),
                        ],
                      ),
                      _expand
                          ? Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(
                                      style: GoogleFonts.rubik(
                                        color: Color(0xFF5E5E5E),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Order Number\n',
                                        ),
                                        TextSpan(
                                          text: '000000012',
                                          style: GoogleFonts.rubik(
                                            color: colorBlack,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(
                                      style: GoogleFonts.rubik(
                                        color: Color(0xFF5E5E5E),
                                        fontSize: 14,
                                      ),
                                      children: [
                                        TextSpan(text: 'Order Date & Time\n'),
                                        TextSpan(
                                          text: DateTime.now().toString(),
                                          style: GoogleFonts.rubik(
                                            color: colorBlack,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : SizedBox.shrink()
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    bottom: 17,
                    left: 19,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Market City Pharmacy',
                              style: GoogleFonts.rubik(
                                color: colorBlack,
                                fontSize: 18,
                              )),
                          buttonContainer(Image.asset(
                              'assets/images/ic_pharmacy_location_expand.png')),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          style: GoogleFonts.rubik(
                            color: Color(0xFF5E5E5E),
                            fontSize: 14,
                          ),
                          children: [
                            TextSpan(text: 'Order Number\n'),
                            TextSpan(
                              text: '000000012',
                              style: GoogleFonts.rubik(
                                color: colorBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          style: GoogleFonts.rubik(
                            color: Color(0xFF5E5E5E),
                            fontSize: 14,
                          ),
                          children: [
                            TextSpan(text: 'Order Date & Time\n'),
                            TextSpan(
                              text: DateTime.now().toString(),
                              style: GoogleFonts.rubik(
                                color: colorBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
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
                    miAidCard(
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 12, 16, 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(' Market City Pharmacy',
                                style: GoogleFonts.rubik(
                                  color: Color(0xff5E5E5E),
                                  fontSize: 14,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 8,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    color: Colors.red,
                                    height: 80,
                                    width: 70,
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
                                          /*SizedBox(
                                                  height: 18,
                                                ),*/
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
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Text('1X'),
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
              Divider(),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sub Total',
                          style: GoogleFonts.rubik(fontSize: 12),
                        ),
                        Text(
                          'A\$ 40.0',
                          style: GoogleFonts.rubik(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Fees',
                          style: GoogleFonts.rubik(fontSize: 12),
                        ),
                        Text(
                          'A\$ 9.0',
                          style: GoogleFonts.rubik(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Order Total',
                            style: GoogleFonts.rubik(
                                fontSize: 12, fontWeight: FontWeight.w500)),
                        Text(
                          'A\$ 49.0',
                          style: GoogleFonts.rubik(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          splashColor: color.withOpacity(0.1),
                          highlightColor: color.withOpacity(0.2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                            side: BorderSide(
                              color: Color(0xFF30BEE6),
                            ),
                          ),
                          color: Color(0xFFFFFFFF),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PurchaseViewReceipt(),
                              ),
                            );
                          },
                          child: Text(
                            'View Receipt',
                            style: GoogleFonts.rubik(
                              color: color,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                          color: Color(0xFF0CBCC5),
                          onPressed: () {
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => HomeScreen()));
                          },
                          child: Text(
                            'Order Again',
                            style: GoogleFonts.rubik(
                              color: Color(0xFFFFFFFF),
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
