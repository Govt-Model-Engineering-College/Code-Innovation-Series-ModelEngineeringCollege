import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:exam_wand/create_pdf.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart' hide PdfAnnotWidget;
import 'package:pdf/widgets.dart' as pw;
import 'contents.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}
class _LandingScreenState extends State<LandingScreen>{
  File _image = null; String S;String filename;var answers = new List<String>(50);
  Future getImage(bool isCamera) async {
    File image;
    if (isCamera)
      image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }
  Future readText() async{
    FirebaseVisionImage ourImage= FirebaseVisionImage.fromFile(_image);
    TextRecognizer recognizeText = FirebaseVision.instance.textRecognizer();
    VisionText readText = await recognizeText.processImage(ourImage);
    S="";
    for(TextBlock block in readText.blocks) {
      for (TextLine line in block.lines) {
        for (TextElement word in line.elements) {
          S += word.text;
          S+=" ";
        }
        S+="\n";
      }
      S+="\n\n";
    }

  }

  var pdf = pw.Document();

  writeOnPdf(){
    pdf.addPage(
      pw.MultiPage(
          pageFormat: PdfPageFormat.a4,
          margin: pw.EdgeInsets.all(15),

          build: (pw.Context context){
            return <pw.Widget>  [
              pw.Paragraph(
                  text: S,style: pw.TextStyle(fontSize: 16)
              )
            ];
          }
      ),
    );
  }
  Future savePdf()async{
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String documentPath = documentDirectory.path;
    File file = File("$documentPath/$filename.pdf");
    file.writeAsBytesSync(pdf.save());
  }
  Future<String> createAlertDialog(BuildContext context){

    TextEditingController customController =  TextEditingController();

    return showDialog(context: context,builder: (context){
      return AlertDialog(
          title: Text("Enter the filename for the pdf"),
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
  Future<String> Editing(BuildContext context){

    TextEditingController customController =  TextEditingController();

    return showDialog(context: context,builder: (context){
      return AlertDialog(
          title: Text("Enter the word to be edited"),
          content: TextField(controller:customController),
          actions: <Widget>[
            MaterialButton(
                elevation:5.0,
                child: Text("Next"),
                onPressed:() {
                  Navigator.of(context).pop(customController.text.toString());
                }
            )
          ]
      );
    });
  }

  Future<String> Editingnew(BuildContext context){

    TextEditingController customController =  TextEditingController();

    return showDialog(context: context,builder: (context){
      return AlertDialog(
          title: Text("Enter the new word"),
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



  void choiceAction(String choice)async{
    if(choice == Contents.edit)
    {String oldword; String newword;
    await Editing(context).then((Value) {
      oldword = Value;
    });
    await Editingnew(context).then((onValue) {
      newword = onValue;
    });
    S= S.replaceAll(oldword, newword);
    pdf = pw.Document();
    print(S);
    }
    else if(choice == Contents.read_text)
    {
      readText();
    }
  }
  Future<bool> _onBackPressed(){
    return showDialog(context: context,
    builder: (context)=>AlertDialog(
      title: Text("Do you really want to exit the app?"),
      actions: <Widget>[
        FlatButton(
          child: Text("No"),
          onPressed: ()=>Navigator.pop(context,false),
        ),
        FlatButton(
          child: Text("Yes"),
          onPressed: ()=>exit(0),
        ),
      ],
    ),
    );
  }

  Future split(){
    var l = S.length;var n=0;var t=0;
    for(var i=0;i<l;i++)
      {
        if((S.substring(i,i+1))==")") {
          answers[n] = S.substring(t,i);
          t=i+1;
          n+=1;
        }
      }
    answers[n]=S.substring(t);
  }

  @override
  Widget build(BuildContext context){
    return WillPopScope(
      onWillPop: _onBackPressed,
    child: Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        title: Text("Exam Wand"),backgroundColor:Colors.blueGrey[700],
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
        leading: PopupMenuButton<String>(
            icon: Icon(Icons.menu),
            onSelected:choiceAction ,
            itemBuilder: (BuildContext context){
              return Contents.choices.map((String choice){
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            }
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(30, 624, 150, 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blueGrey[800],
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Align(
              alignment: Alignment(-0.9,0.5),
              child: IconButton(
                icon: Icon(Icons.camera, size: 40,
                ),
                onPressed: () {
                  getImage(true);
                },
              ),
            ),


            _image == null ? Container() : Image.file(_image),
            Align(
              alignment: Alignment(-0.9, 0.5),
              child: IconButton(
                icon: Icon(Icons.picture_as_pdf, size: 40),
                onPressed: ()async{
                  writeOnPdf();
                  await createAlertDialog(context).then((onValue) {
                    filename = onValue;
                  }
                  );

                  await savePdf();
                  Directory documentDirectory = await getApplicationDocumentsDirectory();
                  String documentPath = documentDirectory.path;

                  String fullPath = "$documentPath/$filename.pdf";
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => PdfPreviewScreen(fullPath)
                  ));
                  await split();

                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.group_add),
        backgroundColor: Colors.blueGrey[900],
      ),
    ),
    );
  }
}
