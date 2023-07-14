import 'package:latlong2/latlong.dart';

class StopData {
  StopData(
      {required this.name,
      this.location = const LatLng(0, 0),
      this.isStart = false,
      this.isEnd = false});
  String name = '';
  LatLng location;
  bool isStart;
  bool isEnd;
}
