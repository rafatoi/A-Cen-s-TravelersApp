import 'package:flutter/material.dart';

class NightSelector extends StatefulWidget {
  const NightSelector({super.key});

  @override
  State<NightSelector> createState() => _NightSelectorState();
}

class _NightSelectorState extends State<NightSelector> {
  int nights = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 30,
          height: 30,
          child: IconButton(
            onPressed: () {
              setState(() {
                if (nights > 1) {
                  nights--;
                }
              });
            },
            style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              backgroundColor: const Color(0xFF276A49),
            ),
            icon: const Icon(
              Icons.remove,
              size: 16,
              color: Colors.white,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8),
          child: Text('$nights'),
        ),

        SizedBox(
          width: 30,
          height: 30,
          child: IconButton(
            onPressed: () {
              setState(() {
                if (nights < 10) {
                  nights++;
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('The maximus days you can book is 10!'),
                    ),
                  );
                }
              });
            },
            style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              backgroundColor: const Color(0xFF276A49),
            ),
            icon: const Icon(
              Icons.add,
              size: 16,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}