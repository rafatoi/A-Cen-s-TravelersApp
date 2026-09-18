import 'package:flutter/material.dart';
import 'package:traveller_app/widgets/place_card.dart';
import 'package:traveller_app/widgets/section_header.dart';
import 'package:traveller_app/data/travel_places.dart';
import 'detail_screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              ),
              const Text(
                'Discover',
                style: TextStyle(fontSize: 24),
              ),
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
              )
            ],
          )
        )
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(8),
        child: Column(
          children: [
            SectionHeader(
              sections: [
                'Popular',
                'Featured',
                'Most Visited',
                'Europe',
                'Asia',
                'Latam'
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.7,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  final place = places[index];

                  return PlaceCard(
                    title: place.title,
                    location: place.location,
                    imagePath: place.imagePath,
                    rating: place.rating,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(id: index)
                        ),
                      );
                    }
                  );
                },
              )
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(vertical: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  ),
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('You pressed View All')
                        ),
                      );
                    },
                    child: const Text(
                      'View All',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF276A49)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8
                ),
                itemBuilder: (context, index) {
                  final place = places[index + 2];

                  return PlaceCard(
                    title: place.title,
                    location: place.location,
                    imagePath: place.imagePath,
                    rating: place.rating,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(id: index + 2)
                        )
                      );
                    }
                  );
                }
              )
            )
          ]
        )
      )
    );
  }
}