import 'package:combus/constants/color_theme.dart';
import 'package:combus/constants/text_styles.dart';
import 'package:combus/view/components/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../components/buttons.dart';

class StopsSelectScreen extends StatelessWidget {
  const StopsSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Add Stops"),
          backgroundColor: AppColorTheme.primaryColor,
          actions: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: AppFilledButton(
                // onPressed: () {},
                text: "Proceed",
                icon: Icons.arrow_forward_rounded,
                isWhite: true,
              ),
            )
          ]),
      body: Stack(
        fit: StackFit.expand,
        children: [
          FlutterMap(
            options: MapOptions(
              center: const LatLng(10.024374, 76.307963),
              zoom: 13,
              maxZoom: 18,
              onTap: (tapPosition, point) {
                // isCustomer
                //     ? customerController.setLocation(point)
                //     : providerController.setLocation(point);
              },
            ),
            // mapController: mapController,
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchField(),
              ),
              Spacer(flex: 3),
              Center(
                child: AppFilledButton(text: "Add Stop", isWhite: true),
              ),
              SizedBox(height: 10),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.elliptical(
                          MediaQuery.of(context).size.width / 2, 10)),
                ),
                padding: EdgeInsets.fromLTRB(5, 25, 5, 5),
                child: ListView(
                  children: [
                    for (int i = 0; i < 10; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 40,
                              child: Center(
                                child: Text(
                                  "${i + 1}.",
                                  style: AppTextStyles.medium,
                                ),
                              ),
                            ),
                            Expanded(
                              child: OutlineTextField(),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Icon(
                                Icons.location_on_rounded,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      )
                  ],
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
