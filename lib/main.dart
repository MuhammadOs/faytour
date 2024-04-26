import 'package:faytour/widgets/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FayTour',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CustomBottomNavBar(),
    );
  }
}