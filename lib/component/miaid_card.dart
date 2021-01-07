import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const color = Color(0xFF0CBCC5);
const colorBlack = Color(0xFF010101);
const colorRed = Color(0xFFE63030);
const colorWhite = Color(0xFFFFFFFF);
const colorgrey = Color(0xFF696969);
const borderColor = Color(0xFFB1B1B1);
const colorYellow = Color(0xFFE68C30);
const colorPurple = Color(0xFF5251F7);
const colorFont = Color(0xFF5E5E5E);


Widget miAidCard(Widget child) {
  return Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: Color(0xff003f51).withOpacity(0.19),
        offset: Offset(
          0,
          4,
        ),
        blurRadius: 15,
        spreadRadius: 0,
      )
    ],
  ),
  child: child,
    );
}

Widget activeSubscriptionCard(Widget child) {
  return Container(
    decoration: new BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: color,
      boxShadow: [
        new BoxShadow(
          color: Color(0xFF003f51).withOpacity(0.15),
          blurRadius: 15.0,
          spreadRadius: 0.0, //extend the shadow
          offset: Offset(
            0.0, // Move to right 10  horizontally
            4, // Move to bottom 10 Vertically
          ),
        ),
      ],
    ),
    child: child,
  );
}

Widget radiobuttonContainer(Widget child) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Color(0xffFFFFFF),
      boxShadow: [
        BoxShadow(
          color: Color(0xff003f51).withOpacity(0.1),
          offset: Offset(
            0,
            4,
          ),
          blurRadius: 15,
          spreadRadius: 0,
        )
      ],
    ),
    child: child,
  );
}

Widget buttonContainer(Widget child) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: Color(0xffFFFFFF),
      boxShadow: [
        BoxShadow(
          color: Color(0xff003f51).withOpacity(0.1),
          offset: Offset(
            0,
            4,
          ),
          blurRadius: 15,
          spreadRadius: 0,
        )
      ],
    ),
    child: child,
  );
}


