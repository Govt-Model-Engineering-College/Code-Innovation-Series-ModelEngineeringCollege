
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Center(
       child:Padding(
         padding: const EdgeInsets.all(0.0),
         child: Container(
           decoration: BoxDecoration(
             image:DecorationImage(
               image:AssetImage("assets/menst.jpg"),
            fit:BoxFit.cover, ),
             color: Colors.blue[100]
           ),
           
           child: Padding(
             padding: const EdgeInsets.fromLTRB(50,200, 8, 8),
             child: Column(children: [
              
                  Card(
                    elevation: 100,
                    color: Colors.redAccent[50],
                    child: Padding(
                      padding: const EdgeInsets.all(.30),
                      child: Text(
                          'MEDICAID',
                        style:TextStyle(
                            fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ),
                  ),
                  SizedBox(height:30.0),
                  RaisedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/question1');
                    },
                    icon:Icon(Icons.arrow_forward_ios_sharp,
                    color:Colors.white),
                     label: Text('Next',
                     style:TextStyle(color:Colors.white ),),
                     color:Colors.black,
                      highlightElevation: 20.0,
                      highlightColor: Colors.red,
                     
      )

                ],
              ),
            ),
          ),
       )
      )
    );
  }
}
