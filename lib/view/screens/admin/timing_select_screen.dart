import 'package:combus/constants/color_theme.dart';
import 'package:combus/view/components/buttons.dart';
import 'package:combus/view/components/list_tile.dart';
import 'package:flutter/material.dart';

import '../../../constants/text_styles.dart';

class TimeingSelectionScreen extends StatelessWidget {
  const TimeingSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Set Route Timing"),
        backgroundColor: AppColorTheme.primaryColor,
      ),
      body: ListView(children: [
        Text(
            "Set the arrival time of the bus at each stop in the route for the first trip."),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppListTile(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Stop 1",
                style: AppTextStyles.grey,
              ),
              Text(
                "Muvattupuzha",
                style: AppTextStyles.semiBold,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "15 Stops",
                    style: AppTextStyles.semiBoldOrange,
                  ),
                  AppFilledButton(text: "Edit")
                ],
              )
            ],
          )),
        )
      ]),
      floatingActionButton:
          AppFloatingLabelButton(icon: Icons.add, text: "Add New Route"),
    );
  }
}
