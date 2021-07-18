import 'package:flutter/material.dart';

import 'package:vaksin_info/pages/home_widget/placeholder_widget.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceHolderWidget(Colors.blue),
    PlaceHolderWidget(Colors.red),
    PlaceHolderWidget(Colors.purple),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid-19 Vaksin Info'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Mail',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  /// This function takes in the tapped tab’s index and calls setState on our state class. 
  /// This will trigger the build method to be run again with the state that we pass in to it.
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
