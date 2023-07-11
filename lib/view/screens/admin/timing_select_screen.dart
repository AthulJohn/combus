import 'package:combus/constants/color_theme.dart';
import 'package:combus/view/components/buttons.dart';
import 'package:combus/view/components/list_tile.dart';
import 'package:combus/view/components/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:toggle_switch/toggle_switch.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          Text(
              "Set the arrival time of the bus at each stop in the route for the first trip."),
          Container(
            height: 75,
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: AppListTile(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Stop 1",
                      style: AppTextStyles.grey,
                    ),
                    Text(
                      "Muvattupuzha",
                      style: AppTextStyles.semiBold,
                    ),
                    // AnalogClock(
                    //   hourHandColor: AppColorTheme.primaryColor,
                    //   minuteHandColor: AppColorTheme.primaryColor,
                    // ),
                  ],
                ),
                Text(
                  "11:45 AM",
                  style: AppTextStyles.mediumSemiBold,
                )
              ],
            )),
          ),
          Container(
            height: 150,
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: AppListTile(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Stop 2",
                  style: AppTextStyles.grey,
                ),
                Text(
                  "Vazhakulam",
                  style: AppTextStyles.semiBold,
                ),
                // AnalogClock(
                //   hourHandColor: AppColorTheme.primaryColor,
                //   minuteHandColor: AppColorTheme.primaryColor,
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: OutlineTextField(
                            hintText: "HH",
                          )),
                      SizedBox(width: 5),
                      Text(":"),
                      SizedBox(width: 5),
                      Expanded(
                          flex: 2,
                          child: OutlineTextField(
                            hintText: "MM",
                          )),
                      SizedBox(width: 10),
                      // Expanded(
                      //     flex: 3,
                      // child:
                      ToggleSwitch(
                        // minWidth: 60.0,
                        initialLabelIndex: 0,
                        borderWidth: 3,
                        borderColor: [
                          AppColorTheme.disabled,
                          AppColorTheme.primaryColor,
                          AppColorTheme.disabled,
                        ],
                        activeBgColor: [
                          AppColorTheme.primaryColor,
                        ],
                        activeFgColor: Colors.white,
                        inactiveBgColor: AppColorTheme.disabled,
                        inactiveFgColor: Colors.black,
                        labels: ['AM', 'PM'],
                        onToggle: (index) {},
                        animate: true,
                        // )
                      ),
                    ],
                  ),
                )
              ],
            )),
          ),
        ]),
      ),
      floatingActionButton:
          AppFloatingLabelButton(icon: Icons.add, text: "Add New Route"),
    );
  }
}
