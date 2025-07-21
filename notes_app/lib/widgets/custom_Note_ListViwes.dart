import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_items.dart';

class CustomNoteListViews extends StatelessWidget {
  const CustomNoteListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: CustomItem(),
      );
    });
  }
}