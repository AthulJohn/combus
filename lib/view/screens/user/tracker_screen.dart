import 'package:combus/constants/color_theme.dart';
import 'package:combus/constants/text_styles.dart';
import 'package:combus/controllers/bus_search_controller.dart';
import 'package:combus/controllers/bus_tracking_controller.dart';
import 'package:combus/models/trip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timelines/timelines.dart';

import '../../../models/bus.dart';

class TrackerScreen extends StatelessWidget {
  final BusData bus;
  const TrackerScreen(this.bus, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColorTheme.primaryColor,
          // title: Text(
          //   "We work Better in our app. Try Installing!",
          //   style: TextStyle(
          //     fontSize: 15,
          //   ),
          //   maxLines: 2,
          // ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 30,
              onPressed: () {},
            )
          ],

          title: Text(
            "Bus Tracker",
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            GetBuilder<BusTrackingController>(
                init: BusTrackingController(trip: bus.currentTrip),
                builder: (controller) {
                  return Column(
                    children: [
                      Expanded(
                        child: Timeline.tileBuilder(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 60, 10, 30),
                          theme: TimelineThemeData(
                              nodePosition: 0.3, indicatorPosition: 0),
                          builder: TimelineTileBuilder.connected(
                            connectionDirection: ConnectionDirection.before,
                            indicatorBuilder: (context, index) => DotIndicator(
                              border: Border.all(color: Colors.white, width: 2),
                              size: 25,
                              color: index <= controller.lastStopIndex
                                  ? AppColorTheme.disabled
                                  : AppColorTheme.primaryColor,
                            ),
                            itemExtent: 100,
                            connectorBuilder: (context, index, type) =>
                                SolidLineConnector(
                              thickness: 10,
                              color: index <= controller.lastStopIndex
                                  ? AppColorTheme.disabled
                                  : index == controller.lastStopIndex + 1
                                      ? AppColorTheme.primaryColor
                                      : AppColorTheme.lightPrimary,
                            ),
                            oppositeContentsBuilder: (context, index) => Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "${controller.trip.times[index].hour} : ${controller.trip.times[index].minute}",
                                ),
                              ),
                            ),
                            contentsBuilder: (context, index) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Text(
                                      controller.trip.route.stops[index].name),
                                ),
                                const SizedBox(height: 25),
                                if (index == controller.lastStopIndex &&
                                    index < controller.trip.stopCount - 1)
                                  Text(
                                      "   Enroute to ${controller.trip.route.stops[index + 1].name}")
                              ],
                            ),
                            itemCount: controller.trip.stopCount,
                          ),
                        ),
                      ),
                      const BottomPanel()
                    ],
                  );
                }),
            // Positioned(
            //   right: 10,
            //   top: 10,
            // child: BusDetailsBanner(),
            // )
          ],
        ));
  }
}

class BottomPanel extends StatelessWidget {
  const BottomPanel({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.vertical(top: Radius.elliptical(width / 2, 10)),
          color: AppColorTheme.primaryColor),
      padding: EdgeInsets.all(20),
      child: GetBuilder<BusTrackingController>(
          init: Get.find<BusTrackingController>(),
          builder: (controller) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('EYEWASH MOTORS', style: AppTextStyles.highWhite),
                  SizedBox(height: 15),
                  if (controller.lastStopIndex == controller.trip.stopCount - 1)
                    Text('Reached Destination',
                        style: AppTextStyles.mediumWhite),
                  if (controller.lastStopIndex < controller.trip.stopCount - 1)
                    Text(
                      'Next Stop',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  if (controller.lastStopIndex < controller.trip.stopCount - 1)
                    Text(
                        '${controller.trip.route.stops[controller.lastStopIndex + 1].name} - 9 Kms',
                        style: AppTextStyles.mediumWhite),
                  SizedBox(height: 10),
                  Text(
                    'Previous Stop',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                      controller
                          .trip.route.stops[controller.lastStopIndex].name,
                      style: AppTextStyles.lowWhite),
                ]);
          }),
    );
  }
}

class BusDetailsBanner extends StatelessWidget {
  const BusDetailsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(10),
    //       border: Border.all(color: AppColorTheme.primaryColor, width: 4)),
    //   child: Container(
    //     decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(7),
    //         image: DecorationImage(
    //           image: NetworkImage(
    //               "https://th.bing.com/th/id/OIP.eUGH3nejhuqO7O4zOh0uWgHaFj?pid=ImgDet&rs=1"),
    //           fit: BoxFit.cover,
    //         )),
    //     width: 50,
    //     height: 50,
    //   ),
    // );
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColorTheme.primaryColor),
        width: MediaQuery.of(context).size.width - 20,
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.eUGH3nejhuqO7O4zOh0uWgHaFj?pid=ImgDet&rs=1"),
                    fit: BoxFit.cover,
                  )),
              width: 80,
              height: 80,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Palariputhenparambil Motor Service",
                        style: AppTextStyles.lowWhite),
                    Text("KL 07 1234", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.share),
              iconSize: 30,
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.close),
              iconSize: 30,
              color: Colors.white,
            ),
          ],
        ));
  }
}
