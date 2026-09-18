import 'package:flutter/material.dart';
import 'package:traveller_app/widgets/primary_button.dart';
import 'explore_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
              height: 500,
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/forrest_road.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                'Winter Vacation Trips',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, height: 1.2),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Enjoy your winter vacations with warmth\n'
                    'and amazing sightseeing on the mountains.\n'
                    'Enjoy the best experience with us!',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, height: 1.6),
              ),
            ),
            PrimaryButton(
              text: 'Let´s Go!',
              icon: Icons.chevron_right,
              weightText: FontWeight.w400,
              sizeText: 18,
              onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ExploreScreen())
              );
              }
            )
          ]
        )
      )
    );
  }
}