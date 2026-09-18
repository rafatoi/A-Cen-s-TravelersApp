import 'package:flutter/material.dart';

class CustomIconbtn extends StatelessWidget {
  final void Function()? onPressed;
  final IconData icon;
  const CustomIconbtn({
    super.key,
    this.onPressed,
    this.icon = Icons.chevron_left,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56,
      height: 56,
      child: IconButton(
        style: IconButton.styleFrom(
          backgroundColor: Colors.white.withAlpha(200),
          side: BorderSide(color: Color(0xFF276A49), width: 1),
        ),
        onPressed: onPressed,
        icon: Icon(icon, size: 30, color: Color(0xFF276A49)),
      ),
    );
  }
}
