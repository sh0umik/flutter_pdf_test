import 'dart:io';

import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

class PdfRoutine {
  final pdf = Document();

  createPdf() async {
    final font = await rootBundle.load("fonts/Siyamrupali.ttf");
    final ttf = Font.ttf(font);

    pdf.addPage(Page(
        pageFormat: PdfPageFormat.a4,
        build: (Context context) {
          return Center(
            child: Text("পরীক্ষার রুটিন ও সময়সূচী:",
                style: TextStyle(font: ttf, fontSize: 30)),
          );
        }));
    savePDFfile();
  }

  savePDFfile() async {
    final output =
        await getExternalStorageDirectory(); // use the [path_provider (https://pub.dartlang.org/packages/path_provider) library:

    final file = File("${output.path}/example.pdf");
    await file.writeAsBytes(pdf.save());
  }
}
