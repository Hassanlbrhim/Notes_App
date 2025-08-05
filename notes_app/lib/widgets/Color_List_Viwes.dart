import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Colors_Paleet.dart';

class ColorListViwes extends StatelessWidget {
  const ColorListViwes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ColorsPaleet();
        },
      ),
    );
  }
}
