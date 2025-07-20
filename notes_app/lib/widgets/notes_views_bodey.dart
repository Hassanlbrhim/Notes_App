import 'package:flutter/material.dart';

import 'package:notes_app/widgets/custom_appBar.dart';

import 'package:notes_app/widgets/custom_note_items.dart';

class NotesViewsBodey extends StatelessWidget {
  const NotesViewsBodey({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        CustomAppbar(),
        SizedBox(
          height: 20,
        ),
        CustomItem()
      ],
    );
  }
}
