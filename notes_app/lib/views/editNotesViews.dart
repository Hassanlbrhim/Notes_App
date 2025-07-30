import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customEditNotes.dart';

class Editnotesviews extends StatelessWidget {
  const Editnotesviews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Customeditnotes(),
            ],
          ),
        ),
      ),
    );
  }
}
