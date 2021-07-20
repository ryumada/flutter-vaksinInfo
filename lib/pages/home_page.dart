import 'package:flutter/material.dart';
import 'package:vaksin_info/widgets/news_widget.dart';
import 'package:vaksin_info/widgets/test_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int myKey = 1;
  Color color = Colors.blue;

  final List<List> _childrenProperty = [
    [Colors.blue, NewsWidget()],
    [Colors.red, Text('page2')],
    [Colors.purple, Text('page3')],
  ];

  Widget _homepageWidget = NewsWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: Container(
          key: ValueKey<int>(myKey),
          // color: color,
          child: SingleChildScrollView(
            child: _homepageWidget,
          ),
        ),
      ),
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
      // color = _childrenProperty[index][0];
      _homepageWidget = _childrenProperty[index][1];
      myKey++;
    });
  }
}
