import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appBar.dart';

class NotesViewsBodey extends StatelessWidget {
  const NotesViewsBodey({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        CustomAppbar(),
      ],
    );
  }
}
