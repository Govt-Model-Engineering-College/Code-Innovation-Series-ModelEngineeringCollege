import 'package:flutter/material.dart';
class question_1 extends StatefulWidget {
  @override
  _question_1State createState() => _question_1State();
}

class _question_1State extends State<question_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        centerTitle:true,
        title: Text('User LogIn',
        
        style:TextStyle(
            color: Colors.black,
            fontSize: 30
        )),
      ),
      body:SingleChildScrollView(
       child:Container(
         
        decoration: BoxDecoration(
             image:DecorationImage(
               image:AssetImage("assets/peri.jpg"),
            fit:BoxFit.cover, ),
             color: Colors.blue[100]
           ),
         
         child: Padding(
           padding: const EdgeInsets.fromLTRB(20, 10, 20, 100 ),
           child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 8 ),
              child: TextField(
                keyboardType: TextInputType.text,
              cursorColor: Colors.red,
               decoration: InputDecoration(

                hintText:"What shall we call you?",
                
                labelText: "Name",
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
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
          child: TextField(
              cursorColor: Colors.red,
               decoration: InputDecoration(
                hintText:"Your secret code?",
                labelText: "Password",
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
                  maxLength: 10,
                  obscureText: true,
          ),
        ), Padding(
           padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
           child: TextField(
              cursorColor: Colors.red,
               decoration: InputDecoration(
                hintText:"xxxxxx@yyyy.com",

                labelText: "EmailId",
                labelStyle: TextStyle(
                
                  fontSize: 15,
                  backgroundColor: Colors.black12),
focusedBorder:OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    enabledBorder:OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),         
                             fillColor: Colors.pink[100],
                  filled: true,
                  ),
                
                  obscureText: false,
        ),
         ),


         Padding(
           padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
           child: TextField(
             keyboardType: TextInputType.number,
              cursorColor: Colors.red,
               decoration: InputDecoration(
                hintText:"How young you are?",

                labelText: "Age",
                labelStyle: TextStyle(
                
                  fontSize: 15,
                  backgroundColor: Colors.black12),
                 focusedBorder:OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    enabledBorder:OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),         
                       fillColor: Colors.pink[100],
                  filled: true,
                  ),
                
                  obscureText: false,
        ),
         ),



        Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
          child: TextField(
            keyboardType: TextInputType.text,
              cursorColor: Colors.red,
               decoration: InputDecoration(
                hintText:"Gender",
                labelText: "Gender",
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
     RaisedButton.icon(
                  onPressed: (){
                    Navigator.pushNamed(context, '/question2');
                  },
                  icon: Icon(Icons.arrow_forward_ios_sharp,
                  color:Colors.white),
                  label: Text('Next',
                  style:TextStyle(color:Colors.white ),),
                  
                  color:Colors.black,
                  highlightElevation: 20.0,
                  highlightColor: Colors.red,
              )
                  
         

       ],),
         ))
      ));
  }
}
