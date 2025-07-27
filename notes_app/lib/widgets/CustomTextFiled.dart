import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled(
      {super.key, required this.ContentPadding, required this.hintText});
  final EdgeInsetsGeometry ContentPadding;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: priemeryColor,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: priemeryColor,
          fontSize: 20,
        ),
        contentPadding: ContentPadding,
        border: bulideBorder(),
        enabledBorder: bulideBorder(),
        focusedBorder: bulideBorder(
          priemeryColor,
        ),
      ),
    );
  }

  OutlineInputBorder bulideBorder([Color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Color ?? Colors.white,
      ),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
