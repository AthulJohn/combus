import 'package:flutter/material.dart';

import 'route.dart';

class TripData {
  const TripData({
    required this.id,
    required this.times,
    required this.stopCount,
    required this.route,
  });
  const TripData.empty()
      : id = '',
        times = const [],
        route = const RouteData.empty(),
        stopCount = 0;

  final String id;
  final RouteData route;
  final List<TimeOfDay> times;
  final int stopCount;
}
