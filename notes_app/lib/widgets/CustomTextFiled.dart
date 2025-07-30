import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, this.maxline = 1, required this.hintText});
  final int maxline;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: priemeryColor,
      maxLines: maxline,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: priemeryColor,
          fontSize: 20,
        ),
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
