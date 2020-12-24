import 'package:flutter/material.dart';
import 'package:health_app/models/user.dart';
import 'package:health_app/screens/home/home.dart';
import 'package:health_app/screens/home/home_screen.dart';
import 'package:health_app/screens/home/profile.dart';
import 'package:health_app/screens/pages/fixAppointment.dart';
import 'package:health_app/screens/pages/loading.dart';
import 'package:health_app/screens/pages/results.dart';
import 'package:health_app/screens/pages/search.dart';
import 'package:health_app/screens/wrapper.dart';
import 'package:health_app/services/auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        routes: {
          '/home': (context) => Home(),
          '/search': (context) => Search(),
          '/loading': (context) => Loading(),
          '/results': (context) => Results(),
          '/fixAppointment': (context) => Appointment(),
          '/home_screen': (context) => HomeScreen(),
        },
        home: Wrapper(),
      ),
    );
  }
}



