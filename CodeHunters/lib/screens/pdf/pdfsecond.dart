
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class ViewPdf extends StatefulWidget {
  @override
  _ViewPdfState createState() => _ViewPdfState();
}

class _ViewPdfState extends State<ViewPdf> {
  PDFDocument doc;
  @override
  Widget build(BuildContext context) {
    String data = ModalRoute.of(context).settings.arguments;
    // ignore: non_constant_identifier_names
    ViewNow() async {
      doc = await PDFDocument.fromURL(
          data);
      setState(() {

      });
    }

    // ignore: non_constant_identifier_names, missing_return
    Widget Loading(){
      ViewNow();
      if(doc==null){
        return Text("loading");
        //return
      }
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xff0e2433),
        title: Text("Retrieve Report"),
        centerTitle: true,
      ),
      body: doc==null?Loading():PDFViewer(document: doc),
    );
  }
}