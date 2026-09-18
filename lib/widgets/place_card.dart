import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  final String title;
  final String location;
  final String imagePath;
  final double rating;
  final VoidCallback onTap;

  const PlaceCard({
    super.key,
    required this.title,
    required this.location,
    required this.imagePath,
    required this.rating,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 250,
        maxWidth: 300,
        minHeight: 250,
        maxHeight: 280,
      ),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              //The background use all the space available
              Positioned.fill(child: Image.asset(imagePath, fit: BoxFit.cover)),
              //Black box that contains the info
              Container(
                width: double.infinity,
                height: 80,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  //Opacity
                  color: Colors.black.withAlpha(140),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Row(
                      //Distribute the elements within the available space.
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        //Use a container that involves the icon to adjust the size
                        Container(
                          width: 28,
                          height: 28,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1000),
                          ),
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    //Spacing
                    const SizedBox(height: 8),
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
                          '$rating',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
