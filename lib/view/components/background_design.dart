import 'package:combus/constants/color_theme.dart';
import 'package:flutter/material.dart';

import '../../../models/bus.dart';

class BackgroundDesign extends StatelessWidget {
  final Widget child;
  const BackgroundDesign({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      fit: StackFit.expand,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColorTheme.primaryColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(width / 2, width / 20),
                          bottomRight:
                              Radius.elliptical(width / 2, width / 20))),
                )),
            Spacer(flex: 5),
          ],
        ),
        child
      ],
    );
  }
}
