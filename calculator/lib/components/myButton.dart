import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final Color buttonTextColor;
  final Color? buttonBackgroundColor;
  final int? flex;
  final VoidCallback onPressed;

  const MyButton({
    super.key,
    required this.buttonText,
    required this.buttonTextColor,
    required this.buttonBackgroundColor,
    required this.onPressed,
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
            borderRadius: BorderRadius.circular(35), 
            side: BorderSide(width: 2),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(color: buttonTextColor, fontSize: 25),
        ),
      ),
    );
  }
}
