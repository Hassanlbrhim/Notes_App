import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomTextFiled.dart';
import 'package:notes_app/widgets/Custom_Button.dart';
import 'package:notes_app/widgets/add_form_bottom.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

