import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Column(
          children: [
            Image.asset("assests/card_Background.jpeg"),
          ],
        ),
      )
    );
  }
}