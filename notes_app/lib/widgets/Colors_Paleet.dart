// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ColorsPaleet extends StatelessWidget {
  const ColorsPaleet({
    Key? key,
    required this.colorisactive,
    required this.color,
  }) : super(key: key);
  final bool colorisactive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return colorisactive
        ? CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 25,
              backgroundColor:color,
            ),
          )
        : CircleAvatar(
            radius: 30,
            backgroundColor: color,
          );
  }
}
