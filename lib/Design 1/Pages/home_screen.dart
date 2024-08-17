import 'package:flutter/material.dart';
import 'package:practice_ui/Design%201/Components/card_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        toolbarHeight: 160,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
        ),
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, top: 25),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Search Course",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search_outlined,
                        size: 35,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                "Type Something....",
                style: TextStyle(color: Colors.white24, fontSize: 30),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Features",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.red[50],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                        child: Text(
                      "See all",
                      style: TextStyle(color: Colors.red),
                    )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: SizedBox(height: 180, child: CardView()),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Buissness",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.red[50],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                        child: Text(
                      "See all",
                      style: TextStyle(color: Colors.red),
                    )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: SizedBox(height: 180, child: CardView()),
            ),
          ],
        ),
      ),
    );
  }
}
