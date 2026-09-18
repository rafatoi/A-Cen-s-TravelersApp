import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final List<String> sections;

  const SectionHeader({
    super.key,
    required this.sections,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sections.length,
        itemBuilder: (context, index) {
          final bool isSelected = index == 0;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Center(
              child: Text(
                sections[index],
                style: TextStyle(
                  color: isSelected ? const Color(0xFF276A49) : Colors.black,
                  fontSize: 16,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}