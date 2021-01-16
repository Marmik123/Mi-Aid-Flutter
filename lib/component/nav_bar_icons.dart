import 'package:flutter/material.dart'
    show Widget, Container, required, Alignment, Image, AssetImage;

Widget navBarIcon({
  @required String iconAssetName,
  double width = 25,
  double height = 25,
}) {
  return Container(
    width: width,
    height: height,
    alignment: Alignment.center,
    child: Image(
      image: AssetImage('assets/images/NavBar/$iconAssetName'),
      width: width,
      height: height,
    ),
  );
}
