import 'package:flutter/material.dart';

import '../../constants/color_theme.dart';

class BgEclipseDesign extends StatelessWidget {
  const BgEclipseDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BackgroundPaint(),

      // child: Text(
      //     "ComBus, Bus Partners (Just imagine here exists a logo)"),
    );
  }
}

class BackgroundPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final height = size.height;
    final width = size.width;

    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = true
      ..color = AppColorTheme.primaryColor;

    Path myPath = Path();

    myPath.moveTo(0, height * 0.95);

    myPath.quadraticBezierTo(width * 0.4, height * 1.15, width, height * 0.65);
    myPath.lineTo(width, 0);
    myPath.lineTo(0, 0);

    canvas.drawPath(myPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
