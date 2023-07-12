import 'package:combus/models/bus.dart';
import 'package:combus/models/bus_stop.dart';
import 'package:flutter/material.dart';

class BusSearchResult {
  BusData bus = BusData();
  StopData closeStop = StopData();
  TimeOfDay time = TimeOfDay(hour: 0, minute: 0);
}
