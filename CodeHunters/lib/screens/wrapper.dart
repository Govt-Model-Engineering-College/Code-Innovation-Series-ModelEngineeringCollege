import 'package:flutter/material.dart';
import 'package:health_app/models/user.dart';
import 'package:health_app/screens/authenticate/authenticate.dart';
import 'package:health_app/screens/home/home.dart';
import 'package:health_app/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if (user == null) {
      return Authenticate();
    }
    else {
      return Home();
    }

    //signed in or not

  }
}


