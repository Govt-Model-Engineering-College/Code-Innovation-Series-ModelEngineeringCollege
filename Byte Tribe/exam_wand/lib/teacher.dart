import 'package:exam_wand/student.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as http;
import 'package:http/http.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:exam_wand/create_pdf.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart' hide PdfAnnotWidget;
import 'package:pdf/widgets.dart' as pw;
import 'User_model.dart';
import 'contents.dart';
import 'dart:math' show Random;
import "package:random_string/random_string.dart";
import 'package:flutter/cupertino.dart';
class TeachersScreen extends StatefulWidget {
  @override
  _TeachersScreenState createState() => _TeachersScreenState();
}
String code;
class _TeachersScreenState extends State<TeachersScreen>  {

  int randomNumber;
  void _generateRandomNumber(){
    var random = new Random();

    // now the range works like 0 to n-1
    setState(() => randomNumber = random.nextInt(1000));
    code=randomAlphaNumeric(6);
  }
  Future _createCodeDialogue() async{
    TextEditingController c1 = new TextEditingController();
    return await showDialog(context: context, builder: (context)
    {
      return
        Container(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              AlertDialog(
                title: Text("Classroom code"),
                content: Text(randomAlphaNumeric(6)),
                actions: <Widget>[
                  MaterialButton(
                      child: Text("Next"),
                      onPressed: () async {
                        Navigator.of(context).pop(c1.text.toString());
                        await _createNameDialog();
                      }
                  ),

                   ],),
      ],
      ),
        );
    });
  }
  TextEditingController c2 = new TextEditingController();
  Future _createNameDialog() async{
    return await showDialog(context: context,builder: (context){
      return
        AlertDialog(
          title: Text("Classroom Name"),
          content: TextField(
            controller: c2,
          ),
          actions: <Widget> [
            MaterialButton(
                child: Text("Submit"),
                onPressed: () {
                  Navigator.of(context).pop(c2.text.toString());
                }
            ),
            //Student(code: code,name: customController.text),
          ],
        );
    });
  }



  File _image = null;
  String S;
  String filename;
  var Questions;
  Future getImage(bool isCamera) async {
    File image;
    if (isCamera)
      image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  Future readText() async {
    FirebaseVisionImage ourImage = FirebaseVisionImage.fromFile(_image);
    TextRecognizer recognizeText = FirebaseVision.instance.textRecognizer();
    VisionText readText = await recognizeText.processImage(ourImage);
    S = "";
    for (TextBlock block in readText.blocks) {
      for (TextLine line in block.lines) {
        for (TextElement word in line.elements) {
          S += word.text;
          S += " ";
        }
      }
      S += "\n\n";
    }
  }

  var pdf = pw.Document();

  writeOnPdf() {
    pdf.addPage(
      pw.MultiPage(
          pageFormat: PdfPageFormat.a4,
          margin: pw.EdgeInsets.all(32),

          build: (pw.Context context) {
            return <pw.Widget>[
              pw.Paragraph(
                  text: S, style: pw.TextStyle(fontSize: 16)
              )
            ];
          }
      ),
    );
  }

  Future savePdf() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String documentPath = documentDirectory.path;
    File file = File("$documentPath/$filename.pdf");
    file.writeAsBytesSync(pdf.save());
  }


  Future<String> NoofQuestions(BuildContext context){

    TextEditingController customController =  TextEditingController();

    return showDialog(context: context,builder: (context){
      return AlertDialog(
          title: Text("Enter the Question number to correct"),
          content: TextField(controller:customController),
          actions: <Widget>[
            MaterialButton(
                elevation:5.0,
                child: Text("Submit"),
                onPressed:() {
                  Navigator.of(context).pop(customController.text.toString());
                }
            )
          ]
      );
    });
  }



  Future<bool> _onBackPressed() {
    return showDialog(context: context,
      builder: (context) =>
          AlertDialog(
            title: Text("Do you really want to exit the app?"),
            actions: <Widget>[
              FlatButton(
                child: Text("No"),
                onPressed: () => Navigator.pop(context, false),
              ),
              FlatButton(
                child: Text("Yes"),
                onPressed: () => exit(0),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Exam Wand"),
          backgroundColor: Colors.blueGrey[700],
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
              ),
            ),
          ],
          leading: Icon(Icons.menu),
        ),


  floatingActionButton: FloatingActionButton(
    backgroundColor: Colors.blueGrey[700],
  child: IconButton(
  icon: Icon(
  Icons.add,
  ),
  onPressed: () async {
  await _createCodeDialogue();

  },
  ),
  ) ,

      ),
    );
  }
}