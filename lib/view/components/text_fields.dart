import 'package:combus/constants/color_theme.dart';
import 'package:combus/constants/text_styles.dart';
import 'package:flutter/material.dart';

class OutlineTextField extends StatelessWidget {
  final String? hintText;
  final void Function(String)? onChanged;
  const OutlineTextField({super.key, this.hintText, this.onChanged});

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
        hintText: hintText,
      ),
      onChanged: onChanged,
    );
  }
}

class TextFieldWithQuestion extends StatelessWidget {
  final String question;
  final String? hintText;
  final void Function(String)? onChanged;
  const TextFieldWithQuestion(
      {super.key, required this.question, this.hintText, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question, style: AppTextStyles.bold),
        SizedBox(height: 10),
        OutlineTextField(hintText: hintText, onChanged: onChanged)
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
