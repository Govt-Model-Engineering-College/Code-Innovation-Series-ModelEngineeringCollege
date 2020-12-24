import 'package:exam_wand/student.dart';
import 'package:flutter/material.dart';
import 'package:exam_wand/main.dart';
import 'dart:io';
import 'package:exam_wand/teacher.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
void main()=> runApp(MultiProvider(
  providers: [
    ChangeNotifierProvider<Choice> (create: (_)=>Choice(),)
  ],
  child: new MaterialApp(home: MyApp()),
));
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Examwand",),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[700],
        ),
        body: Center(
          child: RaisedButton(
            child: Text("Designation"),
            elevation: 5.0,
            onPressed: () async{
              await _showChoice(context);
            },
          ),
        ),
      ),
    );
  }
  String designation;
  _showChoice(BuildContext context) => showDialog(context: context,builder: (context){
    final _choice=Provider.of<Choice>(context);
    return AlertDialog(
      title: Text("Choose Designation"),
      content: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: desig.map((e) => RadioListTile(
              title: Text(e),
              value: e,
              groupValue: designation,
              selected: _choice.current==e,
              onChanged: (value){
                designation=value;
              },
            )).toList(),
          ),
        ),
      ),
      actions: <Widget>[
        MaterialButton(
          child: Text("Submit",textAlign: TextAlign.right,),
          onPressed: () async{
            Navigator.of(context).pop();
            if(designation=="Student") {
              Navigator.push(context, MaterialPageRoute(builder:
                  (context) => LandingScreen()));
            }
            else Navigator.push(context, MaterialPageRoute(builder: (context) => TeachersScreen()));
          },
        ),
      ],
    );
  });
}

List<String> desig=['Student','Teacher'];
class Choice extends ChangeNotifier{
  String _current=desig[0];
  Choice();

  String get current=>_current;
  updateDesig(String value){
    if(value!=_current) value=_current;
    notifyListeners();
  }
}