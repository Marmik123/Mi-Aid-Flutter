import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/miaid_card.dart';

class PurchaseViewReceipt extends StatefulWidget {
  @override
  _PurchaseViewReceiptState createState() => _PurchaseViewReceiptState();
}

class _PurchaseViewReceiptState extends State<PurchaseViewReceipt> {
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
          "View Receipt",
          style: GoogleFonts.rubik(
            color: colorBlack,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 12,
            ),
            child: Row(
              children: [
                InkWell(
                  child: Image.asset(
                      'assets/images/NavBar/ic_nb_viewreciept_print.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  child: Image.asset(
                      'assets/images/NavBar/ic_nb_viewreciept_share.png'),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            padding: EdgeInsets.only(top: 5, left: 17, right: 17, bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Purchase Receipt',
                      style: GoogleFonts.rubik(fontSize: 12),
                    ),
                    Image.asset('assets/images/logo_reciept.png'),
                  ],
                ),
                Text(
                  'Thank You for ordering with us',
                  style: GoogleFonts.rubik(fontSize: 14),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        style: GoogleFonts.rubik(
                          color: Color(0xFF5E5E5E),
                          fontSize: 12,
                        ),
                        children: [
                          TextSpan(text: 'Order Number'),
                          TextSpan(
                            text: '000000012',
                            style: GoogleFonts.rubik(
                              color: colorBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      DateTime.now().toString(),
                      style: GoogleFonts.rubik(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Order',
                      style: GoogleFonts.rubik(fontSize: 20),
                    ),
                    RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        style: GoogleFonts.rubik(
                          color: Color(0xFF5E5E5E),
                          fontSize: 14,
                        ),
                        children: [
                          TextSpan(text: 'A\$ '),
                          TextSpan(
                            text: '40.0',
                            style: GoogleFonts.rubik(
                                color: colorBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (BuildContext context, index) => ListTile(
                    leading: CircleAvatar(
                      child: Text(
                        '1x',
                        style: GoogleFonts.rubik(color: Colors.black),
                      ),
                      radius: 15,
                      backgroundColor: Colors.white,
                    ),
                    title: Text(
                        'Panadol Rapid Paracetamol Pain Relief Caplets 500 mg'),
                    trailing: Text('A\$ 20.0'),
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
