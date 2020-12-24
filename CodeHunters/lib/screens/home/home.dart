import 'package:flutter/material.dart';
import 'package:health_app/screens/home/home_screen.dart';
import 'package:health_app/screens/home/profile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3792cb),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage('assets/health1.jpeg'),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    icon: Icon(Icons.person),
                    iconSize: 60.0,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProfilePage()));
                    }),

              IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                iconSize: 60.0,
                onPressed: (){
                  Navigator.push(
                  context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }),
          ],
            ),
              ],
            ),
        ),
      );

  }
}
