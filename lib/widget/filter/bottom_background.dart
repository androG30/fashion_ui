import 'package:flutter/material.dart';

import '../../module/theme.dart';

class BottomBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = primaryColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.5000000);
    path0.quadraticBezierTo(size.width * -0.0072417, size.height * 0.6419714,
        size.width * 0.0830583, size.height * 0.6447714);
    path0.cubicTo(
        size.width * 0.2914604,
        size.height * 0.6444107,
        size.width * 0.7082646,
        size.height * 0.6436893,
        size.width * 0.9166667,
        size.height * 0.6433286);
    path0.quadraticBezierTo(size.width * 0.9973167, size.height * 0.6517571,
        size.width, size.height * 0.4957000);
    path0.lineTo(size.width, size.height);
    path0.lineTo(0, size.height);
    path0.lineTo(0, size.height * 0.5018429);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
