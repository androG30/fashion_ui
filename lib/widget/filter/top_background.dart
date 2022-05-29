import 'package:flutter/material.dart';

class TopBackground extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..moveTo(
        0,
        size.height * 0.5004714,
      )
      ..quadraticBezierTo(
        size.width * 0.0448833,
        size.height * 0.6481143,
        size.width * 0.1247250,
        size.height * 0.6433429,
      )
      ..cubicTo(
        size.width * 0.3018771,
        size.height * 0.6433393,
        size.width * 0.6561813,
        size.height * 0.6433321,
        size.width * 0.8333333,
        size.height * 0.6433286,
      )
      ..quadraticBezierTo(
        size.width * 0.9402583,
        size.height * 0.6288143,
        size.width,
        size.height * 0.7852143,
      )
      ..lineTo(
        size.width,
        0,
      )
      ..lineTo(
        0,
        0,
      )
      ..lineTo(
        0,
        size.height * 0.4980857,
      )
      ..close();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
