import 'package:covid_app/screens/home_screens.dart';
import 'package:covid_app/screens/stats_screen.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List _screen = [
    HomePage(),
    StatsScreens(),
    Scaffold(),
    Scaffold(),
    Scaffold()
  ];
  int _current_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_current_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _current_index = index;
          });
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _current_index,
        elevation: 4,
        items: [Icons.home, Icons.insert_chart, Icons.event_note, Icons.info]
            .asMap()
            .map(
              (key, value) => MapEntry(
                key,
                BottomNavigationBarItem(
                  title: Text(''),
                  icon: Container(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                    decoration: BoxDecoration(
                      color: _current_index == key
                          ? Colors.blue
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(value),
                  ),
                ),
              ),
            )
            .values
            .toList(),
      ),
    );
  }
}
