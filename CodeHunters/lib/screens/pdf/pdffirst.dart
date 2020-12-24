import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:health_app/screens/pdf/modal.dart';
import 'package:health_app/screens/pdf/pdfsecond.dart';


class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Modal> itemList = List();
  final mainReference = FirebaseDatabase.instance.reference().child('Database');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Report Storage"),
      ),
      body: itemList.length ==0? Text("   Loading...") : ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: GestureDetector(
                onTap: () {
                  String passData = itemList[index].link;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ViewPdf(),
                          settings: RouteSettings(
                          )
                      )
                  );
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/health.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 140,
                        child: Card(
                          margin: EdgeInsets.all(18),
                          elevation: 7.0,
                          child: Center(
                            child: Text(itemList[index].name + " " +
                                (index + 1).toString()),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getPdfAndUpload();
        },
        child: Icon(Icons.add, color: Colors.white,),
        backgroundColor: Colors.blue[900],
      ),
    );
  }

  Future getPdfAndUpload() async {
    var rng = new Random();
    String randomName = "";
    for (var i = 0; i < 20; i++) {
      print(rng.nextInt(100));
      randomName += rng.nextInt(100).toString();
    }


    File file = await FilePicker.getFile(type: FileType.CUSTOM, fileExtension:'pdf');
    String fileName = '${randomName}.pdf';
    savePdf(file.readAsBytesSync(), fileName);
  }

  savePdf(List<int> asset, String name) async {
    StorageReference reference = FirebaseStorage.instance.ref().child(name);
    StorageUploadTask uploadTask = reference.putData(asset);
    String url = await (await uploadTask.onComplete).ref.getDownloadURL();
    documentFileUpload(url);
  }

  String createCryptoRandomString([int length = 32]) {
    final Random _random = Random.secure();
    var values = List<int>.generate(length, (i) => _random.nextInt(256));
    return base64Url.encode(values);
    //generate key
  }

  void documentFileUpload(String str) {
    var data = {
      "PDF": str,
      "FileName": "Report ",

    };
    mainReference.child(createCryptoRandomString()).set(data).then((v) {
      print("Store Successfully");
    });
  }

  @override

  void initState() {
    mainReference.once().then((DataSnapshot snap) {
      var data = snap.value;
      print(data);
      //Map<dynamic, dynamic> values = snap.value;
      //print(values);
      data.forEach((key, value) {
        Modal m = new Modal(key['PDF'], value['Filename']);
        print(m);
        itemList.add(m);


      });
      setState(() {
        print(itemList.length);
      });
    });
  }

}
