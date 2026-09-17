import 'package:flutter/material.dart';
import 'package:traveller_app/widgets/primary_button.dart';
import 'package:traveller_app/widgets/rating_badget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image.asset('assets/images/forrest_road.png'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/winter_landscape.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 56,
                      height: 56,
                      child: IconButton(
                          style: IconButton.styleFrom(
                              backgroundColor: Colors.white.withAlpha(200),
                              side: BorderSide(
                                color: Color(0xFF276A49),
                                width: 1,
                              )
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.chevron_left,
                            size: 30,
                            color: Color(0xFF276A49),
                          )
                      ),
                    )
                  ],
                ),
              ),
            ),
            Text(
              'Greenland',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, height: 1.2),
            ),
            Row(
              children: [
                ...List.generate(
                  5,
                      (index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16,
                  ),
                ),

                const SizedBox(width: 4),

                Text(
                  '4.5',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            NightSelector(

            ),
            const Text(
              'Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Enjoy your winter vacations with warmth\n'
                  'and amazing sightseeing on the mountains.\n'
                  'Enjoy the best experience with us!',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, height: 1.6),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                        '\$400',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF276A49)
                        )
                    ),
                    Text(
                        '/Package',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF276A49)
                        )
                    )
                  ],
                ),
                SizedBox(
                  width: 180,
                  child: PrimaryButton(
                    text: 'Book Now!',
                    weightText: FontWeight.w400,
                    sizeText: 24,
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('You have booked! :D'),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        ),

      ),
    );
  }
}