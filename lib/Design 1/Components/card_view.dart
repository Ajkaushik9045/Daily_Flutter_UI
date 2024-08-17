import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  CardView({super.key});

  final List<String> images = [
    "assests/card_Background.jpeg",
    "assests/card_Background.jpeg",
    "assests/card_Background.jpeg",
    "assests/card_Background.jpeg"
  ];
  final List<String> profileimages = [];
  final List<String> textWritten = [
    "Find the right\n degree for you",
    "Want to become\n Data Scientist",
    "Want to become\n Computer Expert",
    "Want to become\n Web Developer",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150, // Adjusted height for proper display
      child: ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: SizedBox(
              height: 130,
              width: 150, // Slightly wider to accommodate text
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                        height: 180,
                        width: 150,
                      ),
                    ),
                    Positioned(
                      bottom: 49,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          textWritten[index],
                          style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          softWrap: true,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 12,
                      left: 10,
                      child: SizedBox(
                        height: 20,
                        width: 60,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[100],
                            padding: EdgeInsets.zero,
                          ),
                          child: const Center(
                            child: Text(
                              "9 courses",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
