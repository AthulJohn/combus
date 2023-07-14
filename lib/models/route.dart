import 'package:combus/models/bus_stop.dart';
import 'package:combus/models/trip.dart';
import 'package:flutter/material.dart';

class RouteData {
  const RouteData({
    required this.routeId,
    required this.stops,
    this.tripCount = 0,
  });

  const RouteData.empty()
      : routeId = '',
        stops = const [],
        tripCount = 0;
  final String routeId;
  final List<StopData> stops;
  final int tripCount;
  StopData? get startStop => stops.isEmpty ? null : stops.first;
  StopData? get endStop => stops.isEmpty ? null : stops.last;
  int get stopCount => stops.length;
}
