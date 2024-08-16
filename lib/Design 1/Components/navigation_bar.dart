import 'package:flutter/material.dart';
import 'package:practice_ui/Design%201/Pages/home_Screen.dart';
import 'package:practice_ui/Design%201/Pages/recomendation_Screen.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarWidget> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const RecomendationScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        iconSize: 35,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.home_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.star_outline,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.book_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.person_outline,
            ),
          ),
        ],
      ),
    );
  }
}
