import 'package:flutter/material.dart';
import 'package:flutterapp/screens/languages/Clanguage.dart';
import 'package:flutterapp/screens/languages/css.dart';
import 'package:flutterapp/screens/languages/dart_tutorial.dart';
import 'package:flutterapp/screens/languages/html.dart';
import 'package:flutterapp/screens/languages/java.dart';
import 'package:flutterapp/screens/languages/javascript.dart';
import 'package:flutterapp/screens/languages/python.dart';
import 'package:flutterapp/screens/languages/reactjs.dart';

import 'languages/cpp.dart';


class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/C++.png'),
                        radius: 40,
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Cpp()));
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('C++ \nTutorial',style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Colors.deepPurple,
                        backgroundImage: AssetImage('assets/images/python.jpg'),
                        radius: 40,
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Python()));
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Python \n3 Tutorial',style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/C.png'),
                        radius: 40,
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Clanguage()));
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('    C \nTutorial',style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/html.png'),
                        radius: 40,
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => HTML()));
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('  HTML \nTutorial',style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/css.png'),
                        radius: 40,
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => CSS()));
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('   CSS \nTutorial',style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/javascript.png'),
                        radius: 40,
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => JavaScript()));
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('JavaScript\nTutorial',style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/java1.png'),
                        backgroundColor: Colors.black87,
                        radius: 42,
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Java()));
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('  JAVA \nTutorial',style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/dart.jpg'),
                        backgroundColor: Colors.white,
                        radius: 42,
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Dart()));
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('  Dart \nTutorial',style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(
                  width: 41,
                ),
                Column(
                  children: [
                    GestureDetector(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/reactjs.png'),
                        radius: 42,
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Reactjs()));
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('React JS \nTutorial',style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),

              ],
            ),
            
          ],
        )
      ),
    );
  }
}
