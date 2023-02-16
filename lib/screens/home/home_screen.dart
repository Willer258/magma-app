// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:magmascreen/screens/home/parts_screens/activities/activities_screen.dart';
import 'package:magmascreen/utils/constants.dart';

import 'parts_screens/history/history_screen.dart';
import 'parts_screens/my_account/my_account_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  var mainWidgets = [
    {
      'widget': ActivitiesScreen(),
      'name': 'Activités',
      'icon': Icons.trending_up
    },
    {'widget': HistoryScreen(), 'name': 'Historique', 'icon': Icons.history},
    {'widget': MyAccountScreen(), 'name': 'Mon compte', 'icon': Icons.person},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigation(),
      body: mainWidgets[_selectedIndex]['widget'] as Widget,
    );
  }

  BottomNavigationBar bottomNavigation() {
    return BottomNavigationBar(
        backgroundColor: kSecondaryColor,
        selectedItemColor: kPrimaryColor,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: mainWidgets
            .map(
              (item) => BottomNavigationBarItem(
                  backgroundColor: kPrimaryColor,
                  tooltip: item['name'] as String,
                  icon: Icon(item['icon'] as IconData?),
                  label: item['name'] as String),
            )
            .toList());
  }
}
