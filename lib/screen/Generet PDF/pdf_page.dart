import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:resumebuilderapp/screen/Generet%20PDF/create_pad.dart';

class pdf_page extends StatefulWidget {
  const pdf_page({super.key});

  @override
  State<pdf_page> createState() => _pdf_pageState();
}

class _pdf_pageState extends State<pdf_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PdfPreview(build: (format) => pdfGenerator(),)
    );
  }
}
