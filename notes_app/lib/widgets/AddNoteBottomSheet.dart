import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomTextFiled.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomTextFiled(
            hintText: "Title",
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFiled(
            hintText: 'Content',
            maxline: 7,
          )
        ],
      ),
    );
  }
}
