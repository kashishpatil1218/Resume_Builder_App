import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';

Future<Uint8List> pdfGenerator() async {
  final img = await rootBundle.load('assets/img/PDF_BG.png');
  final imageBytes = img.buffer.asUint8List();
  final pdf = pw.Document();
  pdf.addPage(
    pw.Page(
      margin: pw.EdgeInsets.zero,
      pageFormat: PdfPageFormat.a4,
      build: (Context) {
        return pw.Container(
          decoration: pw.BoxDecoration(
            image: pw.DecorationImage(
              image: pw.MemoryImage(imageBytes),
            ),
          ),
        );
      },
    ),
  );
  return pdf.save();
}
