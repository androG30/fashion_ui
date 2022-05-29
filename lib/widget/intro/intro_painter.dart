import 'package:flutter/material.dart';

class IntroPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    var path0 = Path();

    path0.moveTo(0,size.height*0.6423857);
    path0.quadraticBezierTo(size.width*0.0081083,size.height*0.3382571,size.width*0.2497250,size.height*0.3576143);
    path0.quadraticBezierTo(size.width*0.3643771,size.height*0.3574964,size.width*0.7083333,size.height*0.3571429);
    path0.quadraticBezierTo(size.width*0.9160083,size.height*0.3735571,size.width,size.height*0.0709571);
    path0.quadraticBezierTo(size.width,size.height*0.3032179,size.width,size.height);
    path0.lineTo(0,size.height);
    path0.lineTo(0,size.height*0.6423857);
    path0.close();

    canvas.drawPath(path0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}