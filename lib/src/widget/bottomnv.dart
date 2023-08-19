import 'package:arodion/src/screens/home_screen.dart';
import 'package:arodion/src/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screens/shelf.dart';

class bottomnav extends StatefulWidget {
  const bottomnav({super.key});

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  int _currentIndex = 0;
  List<Widget> pages = [Homescreen(), Shelf(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            iconSize: 28,
            //    selectedFontSize: 15,
            selectedItemColor: Colors.amber,
            selectedLabelStyle: TextStyle(color: Colors.white),
            unselectedItemColor: Colors.black,
            unselectedLabelStyle: TextStyle(color: Colors.black),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.book_sharp), label: 'My books'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_rounded), label: 'Profile'),
            ]),
      ),
    );
  }
}
