import 'package:flutter/material.dart';
class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  void Next() async
  {
Future.delayed(Duration(seconds: 3),(){
Navigator.pushReplacementNamed(context, '/home');
});
  }
    @override
  void initState(){
    Next();
  }

  Widget build(BuildContext context) {
    return Scaffold(
     
      
     body:Center(
       child: Container(
         
              decoration: BoxDecoration(
             image:DecorationImage(
               image:AssetImage("assets/peri.jpg"),
            fit:BoxFit.cover, ),
             color: Colors.blue[100]
           ),
         child: Center(
           child: Text("WE HACK",
           style: TextStyle(
             fontSize: 70.0,
             fontFamily: 'Raleway',
           ),),
         ),

       ),
     ) 
    );
  }
}
