import 'package:combus/constants/color_theme.dart';
import 'package:combus/constants/text_styles.dart';
import 'package:combus/view/components/buttons.dart';
import 'package:combus/view/components/text_fields.dart';
import 'package:flutter/material.dart';

class TripEditScreen extends StatelessWidget {
  const TripEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Enter Trip Details",
          style: AppTextStyles.mediumBold.copyWith(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: AppColorTheme.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 15),
        child: ListView(
          children: [
            // TextFieldWithQuestion(),
            SizedBox(height: 25),
            // TextFieldWithQuestion(),
            SizedBox(height: 25),
            ChipsInput(),
            SizedBox(height: 25),
            // ImageUploader(),
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
        SizedBox(height: 15),
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
