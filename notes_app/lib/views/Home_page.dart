import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_views_bodey.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: const Scaffold(
          backgroundColor: Colors.black,
          body: NotesViewsBodey(),
        ),
      ),
    );
  }
}
