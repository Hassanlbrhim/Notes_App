import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled(
      {super.key,
      this.maxline = 1,
      required this.hintText,
      this.onsaved,
      this.onChanged});
  final int maxline;
  final String hintText;
  final Function(String?)? onsaved;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onsaved,
      validator: (Value) {
        if (Value?.isEmpty ?? true) {
          return "filed is required";
        } else {
          return null;
        }
      },
      cursorColor: priemeryColor,
      maxLines: maxline,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
        ),
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
