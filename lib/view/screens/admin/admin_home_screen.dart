import 'package:combus/constants/color_theme.dart';
import 'package:combus/constants/text_styles.dart';
import 'package:combus/view/components/buttons.dart';
import 'package:flutter/material.dart';

import '../../../models/bus.dart';
import '../../components/background_design.dart';
import '../../components/bus_card.dart';
import '../../components/route_search_card.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ComBus",
          style: AppTextStyles.mediumBold.copyWith(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: AppColorTheme.primaryColor,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: BackgroundDesign(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Matha Motors Limited", style: AppTextStyles.highWhite),
                  SizedBox(height: 10),
                  Text("2 Buses", style: AppTextStyles.lowWhite),
                ],
              ),
            ),
            Text("  Your Buses", style: AppTextStyles.mediumWhite),
            for (int i = 0; i < 2; i++)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: BusDataCard(BusData()),
              ),
          ],
        ),
      )),
      floatingActionButton: AppFloatingButton(Icons.add),
    );
  }
}
