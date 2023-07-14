import 'package:combus/constants/text_styles.dart';
import 'package:combus/models/bus.dart';
import 'package:combus/view/screens/user/tracker_screen.dart';
// import 'package:combus/models/bus_search_.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:text_scroll/text_scroll.dart';

import '../../models/trip.dart';
import 'buttons.dart';

class BusDataCard extends StatelessWidget {
  final BusData bus;
  final bool isAdmin;
  const BusDataCard(this.bus, {super.key, this.isAdmin = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        bus.name,
                        style: AppTextStyles.mediumBold,
                      ),
                      TextScroll(
                        bus.routeDesc,
                        mode: TextScrollMode.endless,
                        velocity:
                            const Velocity(pixelsPerSecond: Offset(30, 0)),
                        delayBefore: const Duration(seconds: 1),
                        intervalSpaces: 10,
                        pauseBetween: const Duration(seconds: 3),
                        textAlign: TextAlign.right,
                        selectable: true,
                        style: AppTextStyles.smallGrey,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 4.0, horizontal: 4),
                        child: Icon(Icons.location_on),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            (bus.previousStop?.name ?? "Idle"),
                            style: AppTextStyles.highBoldOrange,
                          ),
                          Text(
                            bus.previousTime?.toString().substring(1, 4) ?? "-",
                            style: AppTextStyles.smallGrey,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppFilledButton(
                    text: "Track",
                    onPressed: () {
                      Get.to(TrackerScreen(bus));
                    },
                  ),
                  const SizedBox(height: 5),
                  isAdmin
                      ? IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.qr_code_scanner_rounded,
                          ),
                          iconSize: 45,
                        )
                      : FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.share_outlined,
                                ),
                                iconSize: 45,
                              ),
                              FittedBox(
                                  fit: BoxFit.fitHeight,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.bookmark,
                                    ),
                                    iconSize: 45,
                                  ))
                            ],
                          ),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
