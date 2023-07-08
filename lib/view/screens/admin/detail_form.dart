import 'package:combus/constants/color_theme.dart';
import 'package:combus/constants/text_styles.dart';
import 'package:combus/view/components/buttons.dart';
import 'package:combus/view/components/text_fields.dart';
import 'package:flutter/material.dart';

import '../../../models/bus.dart';
import '../../components/background_design.dart';
import '../../components/bus_card.dart';
import '../../components/route_search_card.dart';

class BusDetailForm extends StatelessWidget {
// List<Map<String,dynamic>> tripTypes=[{
// "label":"Limited Stop",
// "selected":true,
// },

// ];

  const BusDetailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Enter Bus Details",
          style: AppTextStyles.mediumBold.copyWith(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: AppColorTheme.primaryColor,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 15),
        child: ListView(
          children: [
            TextFieldWithQuestion(),
            SizedBox(height: 25),
            TextFieldWithQuestion(),
            SizedBox(height: 25),
            ChipsInput(),
            SizedBox(height: 25),
            ImageUploader(),
            SizedBox(height: 25),
            AppFilledButton(
                text: "Proceed to Trip Configuration",
                icon: Icons.arrow_forward_rounded)
          ],
        ),
      ),
    );
  }
}

class ChipsInput extends StatelessWidget {
  const ChipsInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Select the route type (Select all that applies)",
            style: AppTextStyles.bold),
        SizedBox(height: 10),
        Wrap(
          runSpacing: 5,
          spacing: 5,
          children: [
            CustomChip("Limited Stop"),
            CustomChip("Sleeper"),
            CustomChip("Deluxe"),
          ],
        ),
        SizedBox(height: 15),
        Wrap(
          runSpacing: 5,
          spacing: 5,
          children: [
            CustomChip("Ordinary"),
            CustomChip("City Service"),
            CustomChip("Interstate"),
            CustomChip("Air Conditioned")
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(child: OutlineTextField(hintText: "Others (Specify)")),
            SizedBox(width: 10),
            AppFilledButton(
              text: "Add",
              icon: Icons.add,
            )
          ],
        )
      ],
    );
  }
}

class CustomChip extends StatelessWidget {
  final String label;
  const CustomChip(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          if (label.length % 2 == 0) Icon(Icons.close_rounded, size: 15)
        ],
      ),
      selected: label.length % 2 == 0,
      selectedColor: AppColorTheme.primaryColor,
      backgroundColor: Colors.white,
    );
  }
}

class ImageUploader extends StatelessWidget {
  const ImageUploader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Upload an image of the Bus", style: AppTextStyles.bold),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: AppColorTheme.bgColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey[400]!)),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/R.e0e7d4593f4402662ca086a6c0df701b?rik=uciM2IxHuNKRvQ&riu=http%3a%2f%2fshowbus.co.uk%2faustralia%2fA%2f95+Buses-r-us+Mercedes.JPG&ehk=LiyXc49BM5l%2fuwH8G22Y%2fckDm%2bNTGPb2InxEiezo7B0%3d&risl=&pid=ImgRaw&r=0"),
                        fit: BoxFit.cover),
                    border: Border.all(color: Colors.grey[400]!)),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  "IMG_20230527_796987.png",
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.close))
            ],
          ),
        ),
        SizedBox(height: 10),
        Align(
            alignment: Alignment.centerRight,
            child: AppFilledButton(
                text: "Change Image", icon: Icons.upload_rounded))
      ],
    );
  }
}
