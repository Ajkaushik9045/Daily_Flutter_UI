// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:practice_ui/Design%201/Components/destiled_card_view.dart';
import 'package:practice_ui/Design%201/Components/tabbar.dart';

class RecomendationScreen extends StatefulWidget {
  const RecomendationScreen({super.key});

  @override
  State<RecomendationScreen> createState() => _RecomendationScreenState();
}

class _RecomendationScreenState extends State<RecomendationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
        title: const Text(
          "Recomended",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        toolbarHeight: 100,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40)),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Start a new Course",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabbarButtons(
                    text: 'Data Science',
                    color: Colors.pink[100],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabbarButtons(
                    text: 'Data Science',
                    color: Colors.blue[100],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabbarButtons(
                    text: 'Data Science',
                    color: Colors.brown[100],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabbarButtons(
                    text: 'Data Science',
                    color: Colors.yellow[100],
                  ),
                ),
              ],
            ),
          ),
          DetailedCardView(),
        ],
      ),
    );
  }
}
