import 'package:flutter/material.dart';

// bisa import dengan 2 cara
// import 'pages/home_page.dart'; // cara import lokal file
import 'package:vaksin_info/pages/home_page.dart'; // dengan package

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid-19 Vaksin Info',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}