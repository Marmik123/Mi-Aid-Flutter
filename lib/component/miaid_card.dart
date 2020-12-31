import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Card miAidCard(Widget child) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: child,
    shadowColor: Color(0xff003f51).withOpacity(0.2),
    elevation: 3,
  );
}
