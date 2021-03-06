import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vaksin_info/widgets/about_widget.dart';
import 'package:vaksin_info/widgets/news_widget.dart';
import 'package:vaksin_info/widgets/_mainAppView_widget.dart';
import 'package:vaksin_info/widgets/todo_widget.dart';

class HomePage extends StatefulWidget {
  final color = Colors.blue;

  const HomePage({Key? key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int myKey = 1;
  Color color = Colors.blue;

  final List<List> _childrenProperty = [
    [Colors.blue, NewsWidget()],
    [
      Colors.red,
      MainAppView('Vaksin Todo', Icons.checklist_rtl, Colors.red, TodoWidget())
    ],
    [
      Colors.purple,
      MainAppView('About', Icons.info, Colors.purple, AboutWidget())
    ],
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
        backgroundColor: Colors.white,
        selectedItemColor: color,
        unselectedItemColor: Colors.grey[400],
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.new_label_sharp),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist_rtl),
            label: 'Todo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
        ],
      ),
    );
  }

  /// This function takes in the tapped tab’s index and calls setState on our state class.
  /// This will trigger the build method to be run again with the state that we pass in to it.
  void onTabTapped(int index) {
    setState(() {
      if (_currentIndex != index) {
        _currentIndex = index;
        color = _childrenProperty[index][0];
        _homepageWidget = _childrenProperty[index][1];
        myKey++;
      }
    });
  }
}
