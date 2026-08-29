import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final String buttonText;
  final Color buttonTextColor;
  final Color? buttonBackgroundColor;
  final int? flex;

  const myButton({
    super.key,
    required this.buttonText,
    required this.buttonTextColor,
    required this.buttonBackgroundColor,
    this.flex,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: buttonBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50), 
            side: BorderSide(width: 2.5),
          ),
        ),
        onPressed: () => (),
        child: Text(
          buttonText,
          style: TextStyle(color: buttonTextColor, fontSize: 25),
        ),
      ),
    );
  }
}
