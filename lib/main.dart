import 'package:flutter/material.dart';
import 'package:flutter_pdf_test/myPdf.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PdfRoutine pdfRoutine = PdfRoutine();
  int weight;
  String driver;
  String car_num;

  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pdf create test"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text("Create PDF"),
                onPressed: (){
                  pdfRoutine.createPdf();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
