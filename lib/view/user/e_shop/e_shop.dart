import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:miaid/component/nav_bar_icons.dart';
import 'package:miaid/config/app_colors.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/model/pin_info.dart';
import 'package:miaid/view/user/e_shop/cart_eshop.dart';
import 'package:miaid/view/user/e_shop/product_category_details.dart';
import 'package:miaid/view/user/e_shop/purchase.dart';
import 'package:miaid/view/user/location/location.dart';

class EShop extends StatefulWidget {
  @override
  _EShopState createState() => _EShopState();
}

const double CAMERA_ZOOM = 13;
const double CAMERA_TILT = 0;
const double CAMERA_BEARING = 30;
const LatLng SOURCE_LOCATION = LatLng(42.7477863, -71.1699932);
const LatLng DEST_LOCATION = LatLng(42.6871386, -71.2143403);

Set<Marker> markers = {};
int indexMarker;
ValueNotifier valueNotifier = ValueNotifier(indexMarker);

class _EShopState extends State<EShop> {
  TextEditingController searchController = TextEditingController();
  String _selectedValue = '0';

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
        labelColor: Colors.purple);
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    _controller.complete(controller);
    setMapPins();
  }

  @override
  void initState() {
    super.initState();
    setSourceAndDestinationIcons();
  }

  @override
  void dispose() {
    super.dispose();
  }

  CameraPosition initialLocation = CameraPosition(
      zoom: CAMERA_ZOOM,
      bearing: CAMERA_BEARING,
      tilt: CAMERA_TILT,
      target: SOURCE_LOCATION);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              height: 50,
              padding: const EdgeInsets.only(
                left: 20,
                right: 10,
                top: 16,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => Locations(),
                          ),
                        );
                      },
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            width: 1,
                            color: AppColors.k0cbcc5,
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
                              _selectedValue == '1'
                                  ? 'Clarkfield'
                                  : S.of(context).location,
                              style: GoogleFonts.rubik(
                                color: AppColors.k0cbcc5,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CupertinoSegmentedControl(
                          selectedColor: AppColors.k0cbcc5,
                          unselectedColor: Colors.white,
                          borderColor: AppColors.k0cbcc5,
                          children: {
                            '0': Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.5,
                                  color: AppColors.k0cbcc5,
                                ),
                                color: _selectedValue == '0'
                                    ? AppColors.k0cbcc5
                                    : Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 13,
                                  vertical: 4,
                                ),
                                child: Image(
                                  image: AssetImage(_selectedValue == '0'
                                      ? 'assets/images/ic_eshop_listview_normal.png'
                                      : 'assets/images/ic_eshop_listview_active.png'),
                                ),
                              ),
                            ),
                            '1': Container(
                              decoration: BoxDecoration(
                                color: _selectedValue == '1'
                                    ? AppColors.k0cbcc5
                                    : Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                ),
                                border: Border.all(
                                  width: 0.5,
                                  color: AppColors.k0cbcc5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 13,
                                  vertical: 4,
                                ),
                                child: Image(
                                  image: AssetImage(_selectedValue == '1'
                                      ? 'assets/images/ic_eshop_mapview_normal.png'
                                      : 'assets/images/ic_eshop_mapview_active.png'),
                                ),
                              ),
                            ),
                          },
                          onValueChanged: (value) {
                            setState(() {
                              _selectedValue = value;
                            });
                          },
                          groupValue: _selectedValue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            _selectedValue == '1'
                ? location()
                : Container(
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
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (context) => ProductCategoryDetails(),
          ),
        );
      },
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: AppColors.k003f51.withOpacity(0.15),
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
                    color: AppColors.k0cbcc5,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/panadol.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 17.2,
              ),
              Text(
                'Market City \nPharmacy',
                style: GoogleFonts.rubik(
                  color: AppColors.k010101,
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
                  color: AppColors.k5e5e5e,
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
                  color: AppColors.kb1b1b1,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget location() {
    return Container(
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
