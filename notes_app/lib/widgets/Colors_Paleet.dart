import 'package:flutter/material.dart';

class ColorsPaleet extends StatelessWidget {
  const ColorsPaleet({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.amber,
    );
  }
}