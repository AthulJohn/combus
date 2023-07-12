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
                        'Verify the OTP sent to your phone',
                        style: AppTextStyles.high,
                      ),
                      TextFieldWithQuestion(
                        question: "Enter the OTP",
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
