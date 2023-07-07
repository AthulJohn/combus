import 'package:combus/constants/color_theme.dart';
import 'package:combus/constants/text_styles.dart';
import 'package:combus/view/components/buttons.dart';
import 'package:flutter/material.dart';

import '../../../models/bus.dart';
import '../../components/bus_card.dart';
import '../../components/route_search_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColorTheme.primaryColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft:
                                Radius.elliptical(width / 2, width / 20),
                            bottomRight:
                                Radius.elliptical(width / 2, width / 20))),
                  )),
              Spacer(flex: 5),
            ],
          ),
          ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
                child: RouteSearchCard(),
              ),
              for (int i = 0; i < 10; i++)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BusDataCard(BusData()),
                ),
            ],
          )
        ],
      ),
      floatingActionButton: AppFloatingButton(Icons.qr_code_rounded),
    );
  }
}
