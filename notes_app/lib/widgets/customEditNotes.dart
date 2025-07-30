import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomTextFiled.dart';
import 'package:notes_app/widgets/custom_appBar.dart';

class Customeditnotes extends StatelessWidget {
  const Customeditnotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CustomAppbar(
          Title: "Edit Note",
          icon: Icons.check,
        ),
        SizedBox(
          height: 20,
        ),
        CustomTextFiled(hintText: "title"),
        SizedBox(
          height: 10,
        ),
        CustomTextFiled(
          hintText: "coneteant",
          maxline: 7,
        )
      ],
    );
  }
}
