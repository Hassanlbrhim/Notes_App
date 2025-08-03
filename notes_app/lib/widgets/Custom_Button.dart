import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    this.onTap,
    required this.text,
    this.isloding = false,
  });
  void Function()? onTap;
  final String text;
  final bool isloding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: priemeryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: isloding
              ? SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    
                    color: Colors.black,
                  ),
                )
              : Text(
                  text,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
        ),
      ),
    );
  }
}
