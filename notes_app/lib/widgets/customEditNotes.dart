import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appBar.dart';

class Customeditnotes extends StatelessWidget {
  const Customeditnotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(
          Title: "Edit ",
          icon: Icons.check,
        )
      ],
    );
  }
}
