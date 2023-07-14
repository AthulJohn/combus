import 'package:combus/models/bus.dart';
import 'package:combus/models/bus_search_result.dart';
import 'package:combus/models/trip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/bus_stop.dart';
import '../models/route.dart';

class BusSearchController extends GetxController {
  String start = '', dest = '';
  List<BusData> buses = [];

  void updateStart(String val) {
    start = val;
    if (dest != '') {
      search();
    }
  }

  void updateDest(String val) {
    dest = val;
    if (start != '') {
      search();
    }
  }

  void swap() {
    String temp = start;
    start = dest;
    dest = temp;
    buses.clear();
    update();
  }

  void search() {
    buses.add(
      //TODO: fix this mess
      BusData(name: "Lalee motors", routes: {
        "1": RouteData(routeId: "1", stops: [
          StopData(name: "Kathmandu"),
          StopData(name: "Bhaktapur"),
          StopData(name: "Lalitpur"),
          StopData(name: "Pokhara"),
          StopData(name: "Chitwan"),
          StopData(name: "Biratnagar"),
          StopData(name: "Dharan"),
        ]),
        "2": RouteData(routeId: "2", stops: [
          StopData(name: "Kathmandu"),
          StopData(name: "Bhaktapur"),
          StopData(name: "Lalitpur"),
          StopData(name: "Pokhara"),
          StopData(name: "Chitwan"),
          StopData(name: "Biratnagar"),
          StopData(name: "Dharan"),
          StopData(name: "Janakpur"),
          StopData(name: "Birgunj"),
          StopData(name: "Butwal"),
          StopData(name: "Nepalgunj"),
          StopData(name: "Dhangadi"),
          StopData(name: "Mahendranagar"),
        ]),
        "3": RouteData(routeId: "3", stops: [
          StopData(name: "Kathmandu"),
          StopData(name: "Bhaktapur"),
          StopData(name: "Lalitpur"),
          StopData(name: "Pokhara"),
          StopData(name: "Chitwan"),
          StopData(name: "Biratnagar"),
          StopData(name: "Dharan"),
          StopData(name: "Janakpur"),
          StopData(name: "Birgunj"),
          StopData(name: "Butwal"),
          StopData(name: "Nepalgunj"),
          StopData(name: "Dhangadi"),
          StopData(name: "Mahendranagar"),
        ]),
      }, schedule: [
        TripData(
          id: "T1",
          times: [
            TimeOfDay(hour: 8, minute: 0),
            TimeOfDay(hour: 8, minute: 20),
            TimeOfDay(hour: 8, minute: 50),
            TimeOfDay(hour: 9, minute: 10),
            TimeOfDay(hour: 9, minute: 20),
            TimeOfDay(hour: 9, minute: 40),
            TimeOfDay(hour: 10, minute: 10)
          ],
          stopCount: 7,
          route: RouteData(routeId: "1", stops: [
            StopData(name: "Kathmandu"),
            StopData(name: "Bhaktapur"),
            StopData(name: "Lalitpur"),
            StopData(name: "Pokhara"),
            StopData(name: "Chitwan"),
            StopData(name: "Biratnagar"),
            StopData(name: "Dharan"),
          ]),
        )
      ]),
    );
    update();
  }
}
