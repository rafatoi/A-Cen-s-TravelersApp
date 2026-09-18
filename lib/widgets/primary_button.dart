import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final FontWeight weightText;
  final int sizeText;
  final VoidCallback onPressed;
  final IconData? icon;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.weightText,
    required this.sizeText,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          color: Colors.white,
          width: 2
        ),
        backgroundColor: const Color(0xFF276A49),
        //Content color
        foregroundColor: Colors.white,
        padding: EdgeInsets.all(20),
      ),
      onPressed: onPressed,
      child: Row(
        //Avoid from taking up all the width.
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: sizeText.toDouble(),
              fontWeight: weightText,
            )
          ),
          //Using ... to expand SizedBox and Icon
          if (icon != null) ...[
            //Spacing between text and icon
            const SizedBox(width: 60),
            Icon(
              icon,
              color: Colors.white,
              size: sizeText.toDouble() * 1.2,
              //weight: 900,
            )
          ]
        ]
      )
    );
  }
}