import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/view/screens/business_screen.dart';
import 'package:news_app/view/screens/science_screen.dart';
import 'package:news_app/view/screens/settings_screen.dart';
import 'package:news_app/view/screens/sports_screen.dart';

class HomeLayoutController extends GetxController {
  int currentScreen = 0;

  List<Widget> titles = const [
    Text(
      'Business News',
    ),
    Text(
      'Science News',
    ),
    Text(
      'sports News',
    ),
    Text(
      'settings',
    ),
  ];

  List<Widget> screens = const [
    BusinessScreen(),
    ScienceScreen(),
    SportsScreen(),
    SettingsScreen(),
  ];

  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
        icon: Icon(Icons.business_rounded), label: 'business'),
    BottomNavigationBarItem(
        icon: Icon(Icons.science_outlined), label: 'science'),
    BottomNavigationBarItem(
        icon: Icon(Icons.sports_soccer_outlined), label: 'sports'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings'),
  ];

  changeScreen(index) {
    currentScreen = index;
    update();
  }
}
