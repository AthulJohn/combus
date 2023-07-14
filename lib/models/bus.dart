import 'dart:convert';

import 'package:combus/models/bus_stop.dart';
import 'package:combus/models/trip.dart';
import 'package:flutter/material.dart';

import 'bus_owner.dart';
import 'route.dart';

bool timeCompare(TimeOfDay time) {
  return time.hour < TimeOfDay.now().hour ||
      (time.hour == TimeOfDay.now().hour &&
          time.minute < TimeOfDay.now().minute);
}

class BusData {
  BusData(
      {required this.name,
      this.number = "",
      this.routes,
      this.routeDesc = "",
      this.id = "",
      this.schedule,
      this.owner = const BusOwnerData.empty()});
  BusData.empty()
      : name = "",
        number = "",
        routeDesc = "",
        owner = BusOwnerData.empty();
  String name = "", number = "", routeDesc = "", id = "";
  String? imageUrl;
  Map<String, RouteData>? routes;
  StopData? previousStop;
  TimeOfDay? previousTime;
  BusOwnerData owner;
  List<TripData>? schedule;
  TripData get currentTrip =>
      schedule?.lastWhere(
          (element) =>
              element.times.isNotEmpty && timeCompare(element.times.first),
          orElse: () => TripData.empty()) ??
      TripData.empty();
}
