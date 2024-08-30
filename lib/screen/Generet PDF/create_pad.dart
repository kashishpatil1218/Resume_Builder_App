import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:resumebuilderapp/screen/Profile/components/textfield_methode.dart';

import '../../utils/global.dart';

Future<Uint8List> pdfGenerator() async {
  final backImage = await imageFromAssetBundle('assets/img/PDF_BG.png');
  var profileimage = (fileImg != null)
      ? pw.MemoryImage(fileImg!.readAsBytesSync())
      : await imageFromAssetBundle('assets/img/profile_de.png');
  // final img = await rootBundle.load('assets/img/PDF_BG.png');
  // final imageBytes = img.buffer.asUint8List();

  final pdf = pw.Document();
  pdf.addPage(
    pw.Page(
      margin: pw.EdgeInsets.zero,
      pageFormat: PdfPageFormat.a4,
      build: (Context) {
        return pw.Container(
          child: pw.Stack(
            children: [
              pw.Container(
                child: pw.Image(backImage, fit: pw.BoxFit.cover),
              ),
              pw.Column(
                children: [
                  pw.SizedBox(height: 100),
                  pw.Container(
                    height: 190,
                    width: 200,
                    decoration: pw.BoxDecoration(
                        color: PdfColors.blue,
                        border: pw.Border.all(color: PdfColors.blue, width: 2)),
                    child: pw.Image(profileimage, fit: pw.BoxFit.cover),
                  ),
                ],
              ),
              pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.SizedBox(height: 120),
                    pw.Row(children: [
                      pw.SizedBox(width: 300),
                      pw.Text('hii',
                          style: pw.TextStyle(
                              color: PdfColors.black,
                              fontSize: 50,
                              fontWeight: pw.FontWeight.bold))
                    ])
                  ]),
            ],
          ),
        );
      },
    ),
  );
  return pdf.save();
}
