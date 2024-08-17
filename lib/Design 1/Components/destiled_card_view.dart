// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DetailedCardView extends StatefulWidget {
  const DetailedCardView({super.key});

  @override
  State<DetailedCardView> createState() => _DsatiledCardViewState();
}

class _DsatiledCardViewState extends State<DetailedCardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 2)),
      
      child: Row(
        children: [
          Image.asset(
            "assests/card_Background.jpeg",
            height: 200,
            width: 80,
            fit: BoxFit.fill,
          ),
          Column(
            children: [

            ],
          ),
        ],
      ),
    );
  }
}
