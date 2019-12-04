import 'package:flutter/material.dart';

class CustomLinkWell extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonText;
  final Color textColor;
  final Color borderColor;

  CustomLinkWell({
    @required this.onTap,
    @required this.buttonText,
    this.textColor,
    this.borderColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {

    return InkWell(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 18,
              color: textColor,

            ),
          ),
        onTap: () {
//          Navigator.push(
//            context,
//            MaterialPageRoute(builder: (context) => Signin()),
//          );
        }
      );
  }
}

