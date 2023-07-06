import 'package:combus/constants/text_styles.dart';
import 'package:combus/models/bus.dart';
import 'package:flutter/material.dart';

import 'buttons.dart';

class BusDataCard extends StatelessWidget {
  final BusData busData;
  const BusDataCard(this.busData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kavitha",
                      style: AppTextStyles.mediumBold,
                    ),
                    Text(
                      "Thodupuzha-Vazhakulam",
                      style: AppTextStyles.smallGrey,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kaloor",
                      style: AppTextStyles.highBoldOrange,
                    ),
                    Text(
                      "Thodupuzha-Vazhakulam",
                      style: AppTextStyles.smallGrey,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppFilledButton(text: "Track"),
                Text("busData.busSeat"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
