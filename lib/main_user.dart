import 'package:combus/models/trip.dart';
import 'package:combus/view/components/bus_card.dart';
import 'package:combus/models/bus.dart';
import 'package:combus/view/screens/admin/admin_home_screen.dart';
import 'package:combus/view/screens/admin/detail_form.dart';
import 'package:combus/view/screens/admin/registration/signin_screen.dart';
import 'package:combus/view/screens/admin/routes_screen.dart';
import 'package:combus/view/screens/admin/stop_selection.dart';
import 'package:flutter/material.dart';

import 'view/screens/admin/timing_select_screen.dart';
import 'view/screens/user/home_screen.dart';
import 'view/screens/user/tracker_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ComBus',
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        home: const HomeScreen());
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: BusDataCard(BusData()),
//       ),
//     );
//   }
// }
