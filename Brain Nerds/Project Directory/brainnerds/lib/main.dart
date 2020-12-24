import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Health Care', home: SplashPage());
  }
}
