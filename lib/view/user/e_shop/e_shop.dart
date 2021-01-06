import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/miaid_card.dart';
import 'package:toggle_switch/toggle_switch.dart';

class EShop extends StatefulWidget {
  @override
  _EShopState createState() => _EShopState();
}

class _EShopState extends State<EShop> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'E - Shop',
          style: GoogleFonts.rubik(
            color: Color(0xFF010101),
            fontSize: 15,
            fontWeight: FontWeight.bold,
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
                  Image(
                    image:
                        AssetImage('assets/images/NavBar/ic_nb_purchases.png'),
                  ),
                  SizedBox(
                    width: 23,
                  ),
                  Image(
                    image: AssetImage(
                        'assets/images/NavBar/ic_nb_cart_normal.png'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                    child: Container(
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          width: 1,
                          color: color,
                        ),
                      ),
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage(
                                'assets/images/ic_pharmacy_currentlocation.png'),
                          ),
                          Text(
                            'Location',
                            style: GoogleFonts.rubik(
                              color: color,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: color,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ToggleSwitch(
                      minWidth: 60,
                      initialLabelIndex: 1,
                      // cornerRadius: 20.0,
                      // activeBgColor: color,
                      // activeFgColor: Colors.white,
                      inactiveBgColor: colorWhite,
                      // inactiveFgColor: Colors.white,
                      labels: ['', ''],

                      icons: [Icons.ac_unit, Icons.ac_unit_rounded],
                      activeBgColors: [color, color],
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                 padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 17,
                  bottom: 220,
                ), 
                physics: ClampingScrollPhysics(),
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 21.0,
                    childAspectRatio: 0.6,
                    mainAxisSpacing: 20.0),
                itemBuilder: (BuildContext context, int index) {
                  return eShopCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget eShopCard() {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Color(0xff003f51).withOpacity(0.15),
            offset: Offset(
              0,
              4,
            ),
            blurRadius: 15,
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12, top: 12, right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 133,
              width: 133,
              decoration: BoxDecoration(
                border: Border.all(
                  color: color,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Image(
                  fit: BoxFit.cover,
                  image:
                      AssetImage('assets/images/Img_signin_corporateuser.png'),
                ),
              ),
            ),
            SizedBox(
              height: 17.2,
            ),
            Text(
              'Market City \nPharmacy',
              style: GoogleFonts.rubik(
                color: colorBlack,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              '+612 3456 7890',
              style: GoogleFonts.rubik(
                color: Color(0xFF5E5E5E),
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Clayton, VIC 3168',
              style: GoogleFonts.rubik(
                color: Color(0xFFB1B1B1),
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
