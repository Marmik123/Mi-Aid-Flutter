import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/miaid_card.dart';

class Locations extends StatefulWidget {
  @override
  _LocationsState createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  TextEditingController searchController = TextEditingController();

  bool _expand = false;

  int value_1;
  int value_2;
  int quentity = 1;
  bool remove = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'Choose Location',
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
                image: const AssetImage('assets/images/NavBar/ic_nb_close.png'),
              ),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            decoration: BoxDecoration(
              color: Color.fromRGBO(90, 177, 255, 0.1),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(
                      'assets/images/ic_pharmacy_currentlocation.png'),
                ),
                Text(
                  'use current location',
                  style: GoogleFonts.rubik(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: color,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'or select a location',
            style: GoogleFonts.rubik(
              color: colorFont,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 10,
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
          SizedBox(
            height: 12,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: 2,
            itemBuilder: (BuildContext context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                divider(),
                Container(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: _expand
                        ? Color.fromRGBO(90, 177, 255, 0.1)
                        : colorWhite,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Australia Capital Territory',
                          style: GoogleFonts.rubik(
                            color: colorFont,
                            fontSize: 14,
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
                ),
              
                _expand
                    ? Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10, left: 20, right: 20),
                        // decoration: BoxDecoration(
                        //   color: Color.fromRGBO(90, 177, 255, 0.1),
                        // ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            radiobuttonContainer(
                              Row(
                                children: [
                                  Radio(
                                    focusColor: color,
                                    value: 0,
                                    groupValue: value_1,
                                    onChanged: (value) {
                                      setState(() {
                                        value_1 = value;
                                      });
                                    },
                                    activeColor: Color(0xff0CBCC5),
                                    toggleable: true,
                                  ),
                                  Text(
                                    'Canberra',
                                    style: GoogleFonts.rubik(
                                      color: Color(0xff5E5E5E),
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            radiobuttonContainer(
                              Row(
                                children: [
                                  Radio(
                                    activeColor: Color(0xff0CBCC5),
                                    value: 1,
                                    focusColor: color,
                                    groupValue: value_2,
                                    onChanged: (value) {
                                      setState(() {
                                        value_2 = value;
                                      });
                                    },
                                    toggleable: true,
                                  ),
                                  Text(
                                    'Oaks Esate',
                                    style: GoogleFonts.rubik(
                                      color: Color(0xff5E5E5E),
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      )
                    : SizedBox.shrink()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget divider(){
    return Container(
                  height: 0.5,
                  width: MediaQuery.of(context).size.width,
                  color: colorFont.withOpacity(0.3),
                );
  }
}
