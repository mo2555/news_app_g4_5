import 'package:flutter/material.dart';
import 'package:news_app_g4_5/view/business/business_screen.dart';
import 'package:news_app_g4_5/view/sciences/sciences_screen.dart';
import 'package:news_app_g4_5/view/sports/sports_screen.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int currentIndex = 0;

  changeCurrentIndex({required int index}) {
    currentIndex = index;
    notifyListeners();
  }

  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.business,
        ),
        label: 'Business'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.sports,
        ),
        label: 'Sports'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.science,
        ),
        label: 'Sciences'),
  ];

  List<Widget> screens =[
   BusinessScreen(),
    SportsScreen(),
    SciencesScreen()
  ];

}
