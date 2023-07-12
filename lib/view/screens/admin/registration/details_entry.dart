import 'dart:math';

import 'package:combus/constants/color_theme.dart';
import 'package:combus/constants/text_styles.dart';
import 'package:combus/view/components/text_fields.dart';
import 'package:flutter/material.dart';

import '../../../components/buttons.dart';
import '../../../components/reg_bg_design.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColorTheme.primaryColor,
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  BgEclipseDesign(),
                  Center(
                    child: Text(
                      "ComBus, Bus Partners (Just imagine here exists a logo)",
                      style: AppTextStyles.mediumWhite,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: FractionallySizedBox(
                  widthFactor: 0.8,
                  heightFactor: 0.75,
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'What should we call you?',
                        style: AppTextStyles.high,
                      ),
                      TextFieldWithQuestion(
                        question: "Enter your name or your Company Name",
                        hintText: "ABC Motors",
                        onChanged: (val) {},
                      ),
                      AppFilledButton(text: "Proceed"),
                    ],
                  ),
                ))
          ],
        ));
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
