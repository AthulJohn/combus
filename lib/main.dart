import 'package:combus/view/components/bus_card.dart';
import 'package:combus/models/bus.dart';
import 'package:flutter/material.dart';

import 'view/screens/user/home_screen.dart';

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
