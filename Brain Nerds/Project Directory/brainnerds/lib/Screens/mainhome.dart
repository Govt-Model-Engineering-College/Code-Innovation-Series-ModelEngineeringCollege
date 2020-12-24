import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HOME extends StatelessWidget {
  const HOME({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffE6EFF9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 35,
          ),
          Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.picture_as_pdf_outlined,
                  color: Colors.red,
                ),
                title: Text(
                  'Your Medical Record',
                  style: TextStyle(
                      color: Color(0xff1E1C61),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'How Can We Help You ?',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                color: Color(0xff1E1C61),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ButtonTheme(
                minWidth: 100.0,
                height: 150.0,
                buttonColor: Colors.white,
                child: Stack(
                  children: [
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      child: Text(
                        'Medications',
                        style: TextStyle(
                          color: Color(0xff292685),
                          fontSize: 16.0,
                          fontFamily: 'SourceSansPro',
                        ),
                      ),
                      onPressed: () {
                        //click actions
                      },
                    ),
                    Positioned(
                      // will be positioned in the top right of the container
                      top: 0,
                      right: 0,
                      child: new Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Image.asset(
                            'assets/images/icon 1.png',
                            height: 50.0,
                            width: 50.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ButtonTheme(
                minWidth: 100,
                height: 150.0,
                buttonColor: Colors.white,
                child: Stack(
                  children: [
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Book ',
                            style: TextStyle(
                              color: Color(0xff292685),
                              fontSize: 16.0,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                          Text(
                            'Appointment',
                            style: TextStyle(
                              color: Color(0xff292685),
                              fontSize: 16.0,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        //click actions
                      },
                    ),
                    Positioned(
                      // will be positioned in the top right of the container
                      top: 0,
                      right: 0,
                      child: new Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Image.asset(
                            'assets/images/icon 2.png',
                            height: 50.0,
                            width: 50.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ButtonTheme(
                minWidth: 100.0,
                height: 150.0,
                buttonColor: Colors.white,
                child: Stack(
                  children: [
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Symptom',
                            style: TextStyle(
                              color: Color(0xff292685),
                              fontSize: 16.0,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: Color(0xff292685),
                              fontSize: 16.0,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        //click actions
                      },
                    ),
                    Positioned(
                      // will be positioned in the top right of the container
                      top: 0,
                      right: 0,
                      child: new Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Image.asset(
                            'assets/images/icon 3.png',
                            height: 50.0,
                            width: 50.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ButtonTheme(
                minWidth: 110.0,
                height: 150.0,
                buttonColor: Colors.white,
                child: Stack(
                  children: [
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Find',
                            style: TextStyle(
                              color: Color(0xff292685),
                              fontSize: 16.0,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                          Text(
                            'Hospital',
                            style: TextStyle(
                              color: Color(0xff292685),
                              fontSize: 16.0,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        //click actions
                      },
                    ),
                    Positioned(
                      // will be positioned in the top right of the container
                      top: 0,
                      right: 0,
                      child: new Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Image.asset(
                            'assets/images/icon 4.png',
                            height: 50.0,
                            width: 50.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ButtonTheme(
                minWidth: 110.0,
                height: 150.0,
                buttonColor: Colors.white,
                child: Stack(
                  children: [
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Find',
                            style: TextStyle(
                              color: Color(0xff292685),
                              fontSize: 16.0,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                          Text(
                            'Doctor',
                            style: TextStyle(
                              color: Color(0xff292685),
                              fontSize: 16.0,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        //click actions
                      },
                    ),
                    Positioned(
                      // will be positioned in the top right of the container
                      top: 0,
                      right: 0,
                      child: new Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Image.asset(
                            'assets/images/icon 5.png',
                            height: 50.0,
                            width: 50.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
