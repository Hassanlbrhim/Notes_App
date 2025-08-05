// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:notes_app/widgets/Colors_Paleet.dart';

class ColorListViwes extends StatefulWidget {
  const ColorListViwes({
    Key? key,
  }) : super(key: key);

  @override
  State<ColorListViwes> createState() => _ColorListViwesState();
}

class _ColorListViwesState extends State<ColorListViwes> {
  int colorindex = 0;
  List<Color> noteColors = [
    Color(0xFFEF9A9A), // Soft Red
    Color(0xFFF48FB1), // Light Pink
    Color(0xFFCE93D8), // Lavender Purple
    Color(0xFF9FA8DA), // Muted Indigo
    Color(0xFF81D4FA), // Soft Sky Blue
    Color(0xFFA5D6A7), // Mint Green
    Color(0xFFFFF59D), // Light Yellow
    Color(0xFFFFE082), // Soft Amber
    Color(0xFFFFCC80), // Warm Orange
    Color(0xFFBCAAA4), // Light Brown
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        itemCount: noteColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                colorindex = index;
                setState(() {});
              },
              child: ColorsPaleet(
                color: noteColors[index],
                colorisactive: colorindex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
