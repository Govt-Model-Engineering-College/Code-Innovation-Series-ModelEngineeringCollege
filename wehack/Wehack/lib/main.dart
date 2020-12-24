
import 'package:flutter/material.dart';
import 'pages/firstpage.dart';
import 'pages/home.dart';
import 'pages/question1.dart';
import 'pages/question2.dart';
import 'pages/question3.dart';
import 'pages/question4.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute:'/',
routes: {
  '/':(context)=>FirstPage(),
  '/home':(context)=>Home(),
   '/question1':(context)=>question_1(),
    '/question2':(context)=>question_2(),
    '/question3':(context)=>question_3(),
    '/question4':(context)=>question_4()
},
  ));
}