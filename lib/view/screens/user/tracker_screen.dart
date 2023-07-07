import 'package:combus/constants/color_theme.dart';
import 'package:combus/models/trip.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class TrackerScreen extends StatelessWidget {
  final TripData? tripData;
  const TrackerScreen(this.tripData, {super.key});

  @override
  Widget build(BuildContext context) {
    int curStop = 5;
    int leng = 14;
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
            Column(
              children: [
                Expanded(
                  child: Timeline.tileBuilder(
                    padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 10, vertical: 60),
                    theme: TimelineThemeData(
                        nodePosition: 0.3, indicatorPosition: 0),
                    builder: TimelineTileBuilder.connected(
                      connectionDirection: ConnectionDirection.before,
                      indicatorBuilder: (context, index) => DotIndicator(
                        border: Border.all(color: Colors.white, width: 2),
                        size: 25,
                        color: index <= curStop
                            ? Color(0xffE4DAD3)
                            : AppColorTheme.primaryColor,
                      ),
                      itemExtent: 100,
                      connectorBuilder: (context, index, type) =>
                          SolidLineConnector(
                        thickness: 10,
                        color: index <= curStop
                            ? Color(0xffE4DAD3)
                            : index == curStop + 1
                                ? AppColorTheme.primaryColor
                                : Color(0xffE5C7AF),
                      ),
                      contentsBuilder: (context, index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('Timeline Event $index'),
                          ),
                          if (index == curStop) Text("   Enroute to Success...")
                        ],
                      ),
                      itemCount: leng,
                    ),
                  ),
                ),
                BottomPanel()
              ],
            ),
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
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          'EYEWASH MOTORS',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Next Stop',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Text(
          'Kothamangalam - 9 Kms',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Previous Stop',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Text(
          'Vazhakulam',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ]),
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
                        style: TextStyle(color: Colors.white, fontSize: 17)),
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
