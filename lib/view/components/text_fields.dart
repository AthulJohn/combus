import 'package:combus/constants/color_theme.dart';
import 'package:combus/constants/text_styles.dart';
import 'package:flutter/material.dart';

class OutlineTextField extends StatelessWidget {
  final String? hintText;
  const OutlineTextField({super.key, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[400]!)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColorTheme.primaryColor)),
          isDense: true,
          hintText: hintText),
    );
  }
}

class TextFieldWithQuestion extends StatelessWidget {
  const TextFieldWithQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("What is your name?", style: AppTextStyles.bold),
        SizedBox(height: 10),
        OutlineTextField(hintText: "Enter your name")
      ],
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
        hintText: "Search Location",
        shape: MaterialStateProperty.all<StadiumBorder>(
            StadiumBorder(side: BorderSide(color: Colors.grey[400]!))),
        onChanged: (text) {},
        trailing: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_rounded,
                color: AppColorTheme.primaryColor,
              ))
        ]);
  }
}
