import 'package:flutter/material.dart';

import '../../constants/color_theme.dart';

class AppListTile extends StatelessWidget {
  final Widget? child;
  const AppListTile({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
        borderRadius: BorderRadius.circular(10),
        color: AppColorTheme.primaryColor,
      ),
      padding: EdgeInsets.only(left: 8),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.horizontal(right: Radius.circular(10)),
          ),
          padding: EdgeInsets.all(8),
          child: child),
    );
  }
}
