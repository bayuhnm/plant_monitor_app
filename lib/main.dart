import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:plant_monitor_app/screens/loading_screen.dart';
import 'package:plant_monitor_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: LoadingScreen(),
      );
  }
}