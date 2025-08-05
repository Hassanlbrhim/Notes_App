// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widgets/customEditNotes.dart';

class Editnotesviews extends StatelessWidget {
  const Editnotesviews({
    super.key,
    required this.note,
  });
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Customeditnotes(note: note),
            ],
          ),
        ),
      ),
    );
  }
}
