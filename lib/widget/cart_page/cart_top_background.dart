import 'package:flutter/material.dart';

import '../../module/theme.dart';

class CartTopBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = accentColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path()
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

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
