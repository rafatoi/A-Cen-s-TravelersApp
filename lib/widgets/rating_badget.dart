import 'package:flutter/material.dart';

//Using StatefulWidget cause it has mutable internal state
class RatingBadget extends StatefulWidget {

  const RatingBadget({super.key});

  @override
  State<RatingBadget> createState() => _RatingBadgetState();
}

class _RatingBadgetState extends State<RatingBadget> {
  int stars = 5;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Minus button
        SizedBox(
          width: 30,
          height: 30,
          child: IconButton(
            onPressed: () {
              setState(() {
                if (stars > 1) {
                  stars--;
                }
              });
            },
            style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              backgroundColor: const Color(0xFF276A49)
            ),
            icon: const Icon(
              Icons.remove,
              size: 16,
              color: Colors.white
            )
          )
        ),
        //Spacing
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text('$stars')
        ),
        //Add button
        SizedBox(
          width: 30,
          height: 30,
          child: IconButton(
            onPressed: () {
              setState(() {
                if (stars < 5) {
                  stars++;
                }
              });
            },
            style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              backgroundColor: const Color(0xFF276A49)
            ),
            icon: const Icon(
              Icons.add,
              size: 16,
              color: Colors.white
            )
          )
        )
      ]
    );
  }
}