
import 'package:flutter/material.dart';
class question_3 extends StatefulWidget {
  @override
  _question_3State createState() => _question_3State();
}

class _question_3State extends State<question_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent[800],
        appBar: AppBar(
          backgroundColor:  Colors.pink[100],
          title: Text('Previous Page',
              style:TextStyle(
                  fontSize: 20,
                  color: Colors.black,
              )),
        ),
        body:Center(
            child:Container(
decoration: BoxDecoration(
             image:DecorationImage(
               image:AssetImage("assets/peri.jpg"),
            fit:BoxFit.cover, ),
             color: Colors.blue[100]
           ),

              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children:[
                    Card(
                      elevation: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'What is your period length? (in days)',
                          style: TextStyle(
                              fontSize:20,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                      
                    ),

Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
          child: TextField(
                cursorColor: Colors.black,
                 decoration: InputDecoration(
                  hintText:"5",
                  labelText: "Period Length",
                  labelStyle: TextStyle(
                  
                    fontSize: 15,
                    backgroundColor: Colors.black12),
                    focusedBorder:OutlineInputBorder(
                      borderSide:BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      enabledBorder:OutlineInputBorder(
                      borderSide:BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    fillColor:  Colors.pink[100],
                    filled: true,
                    ),
                
                    obscureText: false,
          ),
        ),

                    
                    SizedBox(height: 100.0),
                    RaisedButton.icon(
                        onPressed: (){
                          Navigator.pushNamed(context, '/question4');
                        },
                        icon: Icon(Icons.arrow_forward_ios_sharp,
                        color:Colors.white),
                        label: Text('Next',
                        style:TextStyle(color:Colors.white ),),
                         color:Colors.black,
                  highlightElevation: 20.0,
                  highlightColor: Colors.red,
                    )
                  ]
              ),
            )
        ));
  }
}
