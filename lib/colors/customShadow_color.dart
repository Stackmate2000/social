import 'package:flutter/material.dart';

Color customShadowColor = Color(0xFFEAECFF);

List<BoxShadow> customShadow = [
  BoxShadow(
    color: Colors.white.withOpacity(0.5),
    spreadRadius: -5,
    offset: Offset(-5, -5),
    blurRadius: 30,
  ),
  BoxShadow(
      color: Colors.blue[900].withOpacity(0.3),
      spreadRadius: 2,
      offset: Offset(7, 7),
      blurRadius: 20)
];
