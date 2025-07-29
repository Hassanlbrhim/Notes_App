import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomTextFiled.dart';
import 'package:notes_app/widgets/Custom_Button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CustomTextFiled(
              hintText: "Title",
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFiled(
              hintText: 'Content',
              maxline: 7,
            ),
            SizedBox(
              height: 65,
            ),
            CustomButton(text: "Add"),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
