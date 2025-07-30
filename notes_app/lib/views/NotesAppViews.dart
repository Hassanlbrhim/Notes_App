import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/widgets/AddNoteBottomSheet.dart';
import 'package:notes_app/widgets/notes_views_bodey.dart';

class NotesAppViews extends StatelessWidget {
  const NotesAppViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: priemeryColor,
            onPressed: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  context: context,
                  builder: (context) {
                    return AddNoteBottomSheet();
                  });
            },
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.black,
          body: NotesViewsBodey(),
        ),
      ),
    );
  }
}
