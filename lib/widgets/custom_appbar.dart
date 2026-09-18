import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String title;
  const CustomAppBar({super.key, required this.height, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      //Remove the default back button
      automaticallyImplyLeading: false,
      title: Padding(
        padding: EdgeInsetsGeometry.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 56,
              height: 56,
              child: IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white.withAlpha(200),
                  side: BorderSide(color: Color(0xFF276A49), width: 1),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.chevron_left,
                  size: 30,
                  color: Color(0xFF276A49),
                ),
              ),
            ),
            const Text('Discover', style: TextStyle(fontSize: 24)),
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF276A49),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profile.png',
                  width: 56,
                  height: 56,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
