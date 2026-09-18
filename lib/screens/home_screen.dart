import 'package:flutter/material.dart';
import 'package:traveller_app/config/assets_paths.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image.asset('assets/images/forrest_road.png'),
            Expanded(
              flex: 4,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(AppImages.forrestRoad),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            Flexible(
              flex: 1,
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Winter \nVacation Trips',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Enjoy your winter vacations with warmth\n'
                'and amazing sightseeing on the mountains.\n'
                'Enjoy the best experience with us!',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 1.6,
                ),
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
                    builder: (context) => const ExploreScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
