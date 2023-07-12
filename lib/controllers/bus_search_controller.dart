import 'package:combus/models/bus.dart';
import 'package:combus/models/bus_search_result.dart';
import 'package:get/get.dart';

class BusSearchController extends GetxController {
  String start = '', dest = '';
  List<BusSearchResult> buses = [];
}
