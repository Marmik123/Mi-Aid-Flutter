import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget miAidCard(Widget child) {
  return Container(
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
