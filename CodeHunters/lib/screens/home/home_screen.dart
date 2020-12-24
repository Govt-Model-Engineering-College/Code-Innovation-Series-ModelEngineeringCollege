
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/screens/pages/search.dart';
import 'package:health_app/screens/pdf/pdffirst.dart';
import 'package:marquee/marquee.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
 // Map<String,dynamic> obj = ModalRoute.of(context).settings.arguments;
 // String name1 = obj['name'];
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xff3792cb),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 150.0,),
              Card(
                color: Colors.blue[200],

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(

                  height: 300,
                  width: 500,
                  margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 80.0) ,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40.0),
                      Row(
                        children: [
                          IconButton(
                              icon: Icon(Icons.search),

                              iconSize: 50.0,
                              onPressed: (){
                                Navigator.pushNamed(context,'/search');

                              }),
                          Text("Search Hospitals and Clinics",
                            style: TextStyle(fontSize: 20.0,color: Colors.blueAccent[900],
                                fontWeight: FontWeight.bold),
                           ),
                        ],),

                      Row(
                        children: [
                          IconButton(
                            onPressed:(){ launch(('tel://102'));},
                            icon: Icon(Icons.call),
                            iconSize: 50.0,
                            padding: const EdgeInsets.all(5.0),
                          ),
                          Text("Emergency Ambulance Call",
                            style: TextStyle(fontSize: 20.0,color: Colors.blueAccent[900],fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              icon: Icon(Icons.storage ),
                              iconSize: 50.0,
                              onPressed: (){
                                Navigator.push(
                                     context,
                                   MaterialPageRoute(builder: (context) => FirstPage()));
                                 }
                                ),
                                Text("Report Storage",
                            style: TextStyle(fontSize: 20.0,color: Colors.blueAccent[900],fontWeight: FontWeight.bold),),
                        ],
                      ),
                      //Text(name1)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              Expanded(
                child: Marquee(
                  text: '     Tough times never last, but tough people do.                                  The greatest healing therapy is friendship and love.                           Believe you can, and you are halfway there.                     ',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lobster',
                    letterSpacing: 1.5,
                  ),
                  scrollAxis: Axis.horizontal,
                  blankSpace: 20.0,
                  velocity: 65.0,
                ),
              ),


            ],
          ),
        ],
      ),
    );
  }
}
