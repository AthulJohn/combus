import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import 'text_fields.dart';

class RouteSearchCard extends StatelessWidget {
  final void Function(String) onStartUpdated, onDestUpdated;
  final void Function() onSwap;
  String? prevStart, prevDest;
  RouteSearchCard(
      {super.key,
      required this.onStartUpdated,
      required this.onDestUpdated,
      required this.onSwap,
      this.prevStart,
      this.prevDest});
  @override
  Widget build(BuildContext context) {
    TextEditingController? startController = TextEditingController(),
        destController = TextEditingController();
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 25),
        child: Row(
          children: [
            Expanded(
                child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.my_location_rounded),
                    ),
                    Expanded(
                        child: OutlineTextField(
                      textController: startController,
                      hintText: "Start Location",
                      onChanged: (val) {
                        onStartUpdated(val);
                      },
                    ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.location_city_rounded),
                    ),
                    Expanded(
                        child: OutlineTextField(
                      textController: destController,
                      hintText: "Destination",
                      onChanged: (val) {
                        onDestUpdated(val);
                      },
                    ))
                  ],
                ),
              ],
            )),
            InkWell(
              child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.swap_vert_rounded)),
              onTap: () {
                String? temp = startController.text;
                startController.text = destController.text;
                destController.text = temp;
                onSwap();
              },
            ),
          ],
        ),
      ),
    );
  }
}
