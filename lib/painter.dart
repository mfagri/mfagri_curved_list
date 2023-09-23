import 'dart:ui';
import 'package:flutter/cupertino.dart';

class RPSCustomPainter extends CustomPainter {
  final Color color;
  RPSCustomPainter({super.repaint,required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3204831, size.height * 0.0937694);
    path_0.quadraticBezierTo(size.width * 0.1338144, size.height * 0.0974651,
        size.width * 0.1202976, size.height * 0.1991075);
    path_0.quadraticBezierTo(size.width * 0.0909664, size.height * 0.3692480,
        size.width * 0.0029729, size.height * 0.8796304);
    path_0.quadraticBezierTo(size.width * -0.0002291, size.height * 0.9775574,
        size.width * 0.1178534, size.height * 0.9793564);
    path_0.cubicTo(
        size.width * 0.3017600,
        size.height * 0.9793564,
        size.width * 0.6696465,
        size.height * 0.9793564,
        size.width * 0.8535776,
        size.height * 0.9793564);
    path_0.quadraticBezierTo(size.width * 0.9704380, size.height * 0.9763060,
        size.width * 0.9806794, size.height * 0.8835412);
    path_0.quadraticBezierTo(size.width * 0.8908526, size.height * 0.3672926,
        size.width * 0.8609104, size.height * 0.1951966);
    path_0.cubicTo(
        size.width * 0.8536753,
        size.height * 0.0827995,
        size.width * 0.6901050,
        size.height * 0.0915206,
        size.width * 0.6927693,
        size.height * 0.0897803);
    path_0.quadraticBezierTo(size.width * 0.3252005, size.height * 0.0921464,
        size.width * 0.3204831, size.height * 0.0937694);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 2.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);

    // Layer 1

    Paint paint_fill_1 = Paint()
      ..color = Color.fromARGB(255, 179, 97, 97)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2975000, size.height * 0.3620000);
    path_1.lineTo(size.width * 0.2950000, size.height * 0.3760000);

    canvas.drawPath(path_1, paint_fill_1);

    // Layer 1

    Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(255, 243, 230, 33)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paint_stroke_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}