import 'package:flutter/material.dart';

import 'text_fields.dart';

class RouteSearchCard extends StatelessWidget {
  final void Function(String, String) onSearched;
  const RouteSearchCard({super.key, required this.onSearched});

  @override
  Widget build(BuildContext context) {
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
                      hintText: "Start Location",
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
                      hintText: "Destination",
                    ))
                  ],
                ),
              ],
            )),
            Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.swap_vert_rounded)),
          ],
        ),
      ),
    );
  }
}
