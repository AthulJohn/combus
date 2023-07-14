import 'package:combus/models/bus.dart';
import 'package:combus/models/bus_search_result.dart';
import 'package:combus/models/trip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/bus_stop.dart';

class BusTrackingController extends GetxController {
  BusTrackingController({required this.trip}) {
    trackBus();
  }
  TripData trip;
  int lastStopIndex = 0;

  void nextStop() {
    lastStopIndex++;
    update();
  }

  Future<void> trackBus() async {
    while (lastStopIndex < trip.route.stops.length - 1) {
      await Future.delayed(Duration(seconds: 5));
      nextStop();
    }
  }
}
