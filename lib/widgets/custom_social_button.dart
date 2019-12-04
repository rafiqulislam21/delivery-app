import 'package:flutter/material.dart';

class CustomSocialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData buttonIcon;
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;
  final Color borderColor;

  CustomSocialButton({
    @required this.onPressed,
    @required this.buttonIcon,
    this.backgroundColor,
    this.textColor,
    this.borderColor = Colors.transparent,
    this.iconColor
  });

  @override
  Widget build(BuildContext context) {

    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor),
        borderRadius: BorderRadius.circular(10),
      ),
      color: backgroundColor,
      textColor: textColor,
      padding: const EdgeInsets.all(14.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 6.0, bottom: 6.0),
        child: Column( // Replace with a Row for horizontal icon + text
          children: <Widget>[
            Icon(buttonIcon,
            color: iconColor,),
          ],
        ),
      ),

    );
  }
}