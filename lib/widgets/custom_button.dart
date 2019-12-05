import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color color;
  final Color textColor;
  final Color borderColor;

  CustomButton({
    @required this.onPressed,
    @required this.buttonText,
    this.color,
    this.textColor,
    this.borderColor = Colors.transparent
  });

  @override
  Widget build(BuildContext context) {

    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor),
        borderRadius: BorderRadius.circular(10),
      ),
      color: color,
      textColor: textColor,
      padding: const EdgeInsets.all(14.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
        child: Text(
          buttonText,
          style: TextStyle(
              fontWeight: FontWeight.bold,
          ),),
      ),

    );
  }
}