import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/screens/courses.dart';

import 'package:flutterapp/screens/maindrawer.dart';
import 'package:flutterapp/screens/searchscreen.dart';

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'Learn',
              style: TextStyle(fontSize: 30,fontFamily: 'Montserrat-Regular'),
            ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
            )
          ],
        ),
        drawer: MainDrawer(),
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Text(
                 "What do you\n"
                 "wanna learn today?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 45,
                  fontFamily: 'Montserrat-Regular'
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(
                          left: 10.0, right: 15.0),
                      child: Divider(
                        color: Colors.black87,
                        height: 50,
                        thickness: 0.5,
                      )),
                ),
                Text(
                  "Courses",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.pink,fontFamily: 'Montserrat-Regular'),
                ),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(
                          left: 15.0, right: 10.0),
                      child: Divider(
                        color: Colors.black87,
                        height: 50,
                        thickness: 0.5,
                      )),
                ),
              ]
              ),
              Container(
                child: Courses(),
              )
            ],
          ),
        )
      )
    );
  }
}

