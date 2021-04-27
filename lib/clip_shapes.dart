import 'dart:ui';
import 'package:flutter/material.dart';

class AppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(0, size.height * .7);
    path_0.quadraticBezierTo(
        size.width * 0.4975000, size.height, size.width, size.height * 0.7);
    path_0.lineTo(size.width, 0);
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
