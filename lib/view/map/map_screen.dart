import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:miaid/component/drawer.dart';
import 'package:miaid/component/nav_bar_icons.dart';
import 'package:miaid/config/app_colors.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/model/pin_info.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

const double CAMERA_ZOOM = 13;
const double CAMERA_TILT = 0;
const double CAMERA_BEARING = 30;
const LatLng SOURCE_LOCATION = LatLng(42.7477863, -71.1699932);
const LatLng DEST_LOCATION = LatLng(42.6871386, -71.2143403);

class _MapScreenState extends State<MapScreen> {
  TextEditingController searchController = TextEditingController();

  final Completer<GoogleMapController> _controller = Completer();
  GoogleMapController mapController;

  final ValueNotifier<Set<Marker>> _markers = ValueNotifier<Set<Marker>>({});
  BitmapDescriptor sourceIcon;
  BitmapDescriptor destinationIcon;

  double pinPillPosition = -100;

  PinInformation currentlySelectedPin = PinInformation(
      pinPath: '',
      avatarPath: '',
      location: LatLng(0, 0),
      locationName: '',
      labelColor: Colors.grey);
  PinInformation sourcePinInfo;
  PinInformation destinationPinInfo;

  @override
  void initState() {
    super.initState();
    setSourceAndDestinationIcons();
  }

  void setMapPins() {
    // source pin
    _markers.value.add(Marker(

        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId('sourcePin'),
        position: SOURCE_LOCATION,
        onTap: () {
          setState(() {
            currentlySelectedPin = sourcePinInfo;
            pinPillPosition = 0;
          });
        },
        icon: sourceIcon));

    sourcePinInfo = PinInformation(
        locationName: 'Start Location',
        location: SOURCE_LOCATION,
        pinPath: 'assets/images/ic_mappin_clinic.png',
        // avatarPath: "assets/images/ic_mappin_clinic_selected.png",
        labelColor: Colors.blueAccent);

    // destination pin
    _markers.value.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId('destPin'),
        position: DEST_LOCATION,
        onTap: () {
          setState(() {
            currentlySelectedPin = destinationPinInfo;
            pinPillPosition = 0;
          });
        },
        icon: destinationIcon));

    destinationPinInfo = PinInformation(
      locationName: 'End Location',
      location: DEST_LOCATION,
      pinPath: 'assets/images/ic_mappin_clinic_selected.png',
      // avatarPath: "assets/friend2.jpg",
      labelColor: Colors.purple,
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    _controller.complete(controller);
    setMapPins();
  }

  @override
  Widget build(BuildContext context) {
    var initialLocation = CameraPosition(
      zoom: CAMERA_ZOOM,
      bearing: CAMERA_BEARING,
      tilt: CAMERA_TILT,
      target: SOURCE_LOCATION,
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.kffffff,
      drawer: drawer(context),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColors.kffffff,
        centerTitle: true,
        title: Text(
          S.of(context).eandc,
          style: GoogleFonts.rubik(
            color: AppColors.k010101,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: navBarIcon(iconAssetName: 'ic_nb_menu.png'),
            );
          },
        ),
      ),
      body: SlidingUpPanel(
        minHeight: 180,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        maxHeight: MediaQuery.of(context).size.height * 0.58,
        panelBuilder: (sc) => ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: ListView(
            controller: sc,
            padding: const EdgeInsets.only(
              top: 0,
              left: 20,
              right: 20,
            ),
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            children: [
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 53,
                  height: 5,
                  decoration: BoxDecoration(
                      color: AppColors.k010101.withOpacity(0.09),
                      borderRadius: BorderRadius.circular(2.5)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Corburg Medical Clinic',
                style: GoogleFonts.rubik(
                  color: AppColors.k010101,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.5,
                        color: AppColors.k0cbcc5,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Image(
                      height: 75,
                      width: 75,
                      image: AssetImage(
                          'assets/images/Img_signin_corporateuser.png'),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '31 Oakland St, Maribyrnong VIC 3032 \nAustralia',
                        style: GoogleFonts.rubik(
                          color: AppColors.k747474,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 45),
                            decoration: BoxDecoration(
                              color: AppColors.k0cbcc5,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Text(
                              S.of(context).call,
                              style: GoogleFonts.rubik(
                                color: AppColors.kffffff,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                border: Border.all(
                                  width: 0.5,
                                  color: AppColors.k0cbcc5,
                                )),
                            child: Text(
                              S.of(context).getDirection,
                              style: GoogleFonts.rubik(
                                color: AppColors.k0cbcc5,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: AppColors.k0cbcc5.withOpacity(0.2),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                S.of(context).openingHr,
                style: GoogleFonts.rubik(
                  color: AppColors.k010101,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).monday,
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          color: AppColors.k696969,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        S.of(context).tuesday,
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          color: AppColors.k696969,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        S.of(context).wednesday,
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          color: AppColors.k696969,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        S.of(context).thursday,
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          color: AppColors.k696969,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        S.of(context).firday,
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          color: AppColors.k696969,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        S.of(context).saturday,
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          color: AppColors.k696969,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        S.of(context).sunday,
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          color: AppColors.k696969,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 38,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '9:00 AM - 7:00 PM',
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          color: AppColors.k5e5e5e,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        '9:00 AM - 7:00 PM',
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          color: AppColors.k5e5e5e,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        '9:00 AM - 7:00 PM',
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          color: AppColors.k5e5e5e,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        '9:00 AM - 7:00 PM',
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          color: AppColors.k5e5e5e,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        '9:00 AM - 7:00 PM',
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          color: AppColors.k5e5e5e,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        '9:00 AM - 7:00 PM',
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          color: AppColors.k5e5e5e,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        '9:00 AM - 7:00 PM',
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          color: AppColors.k5e5e5e,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: ValueListenableBuilder(
                valueListenable: _markers,
                builder: (context, value, child) => GoogleMap(
                  myLocationEnabled: true,
                  markers: value,
                  myLocationButtonEnabled: false,
                  onMapCreated: _onMapCreated,
                  mapType: MapType.normal,
                  initialCameraPosition: initialLocation,
                  onTap: (LatLng location) {
                    setState(() {
                      pinPillPosition = -100;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: Container(
                height: 110,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.kffffff,
                      AppColors.kffffff,
                      Colors.white10,
                    ],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    stops: [0.0, 0.4, 1.0],
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
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
                      image: AssetImage('assets/images/btn_search.png'),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 50,
              child: Container(
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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border:
                            Border.all(width: 0.5, color: AppColors.ke63030),
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
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          // top: 10,
                          // bottom: 10,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 9,
                              width: 9,
                              decoration: BoxDecoration(
                                color: AppColors.ke63030,
                                borderRadius: BorderRadius.circular(2),
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
                            ),
                            SizedBox(width: 6),
                            Text(
                              S.of(context).emergencys,
                              style: GoogleFonts.rubik(
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
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border:
                              Border.all(width: 0.5, color: AppColors.k0cbcc5),
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
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 9,
                                width: 9,
                                decoration: BoxDecoration(
                                  color: AppColors.k0cbcc5,
                                  borderRadius: BorderRadius.circular(2),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.k0cbcc5.withOpacity(0.1),
                                      offset: Offset(
                                        0,
                                        4,
                                      ),
                                      blurRadius: 10,
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 6),
                              Text(
                                S.of(context).clinic,
                                style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border:
                            Border.all(width: 0.5, color: AppColors.ke68c30),
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
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 10,
                          bottom: 10,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 9,
                              width: 9,
                              decoration: BoxDecoration(
                                color: AppColors.ke68c30,
                                borderRadius: BorderRadius.circular(2),
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
                            ),
                            SizedBox(width: 6),
                            Text(
                              S.of(context).dentist,
                              style: GoogleFonts.rubik(
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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border:
                            Border.all(width: 0.5, color: AppColors.k5251f7),
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
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 10,
                          bottom: 10,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 9,
                              width: 9,
                              decoration: BoxDecoration(
                                color: AppColors.k5251f7,
                                borderRadius: BorderRadius.circular(2),
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
                            ),
                            SizedBox(width: 6),
                            Text(
                              S.of(context).physiotherapy,
                              style: GoogleFonts.rubik(
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
            ),
          ],
        ),
      ),
      // body: ,
    );
  }

  void setSourceAndDestinationIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'assets/images/ic_mappin_clinic.png');
    destinationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'assets/images/ic_mappin_clinic_selected.png');
  }
}
