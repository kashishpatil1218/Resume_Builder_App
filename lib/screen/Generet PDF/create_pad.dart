import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:resumebuilderapp/screen/Generet%20PDF/Colum_title.dart';
import 'package:resumebuilderapp/screen/Generet%20PDF/text_colum_for_2.dart';
import 'package:resumebuilderapp/screen/Profile/components/textfield_methode.dart';

import '../../utils/global.dart';
import 'components.dart';

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
              pw.Container(
                width: 215,
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                  children: [
                    //pw.SizedBox(height: 100),
                    pw.Padding(
                      padding: pw.EdgeInsets.only(left: 18, top: 80),
                      child: pw.Container(
                        height: 190,
                        width: 200,
                        decoration: pw.BoxDecoration(
                          color: PdfColors.blue,
                          border:
                              pw.Border.all(color: PdfColors.blue, width: 2),
                        ),
                        child: pw.Image(profileimage, fit: pw.BoxFit.cover),
                      ),
                    ),
                    columnTitle(text: 'Contact'),
                    detialContactText(Text: contactList[0]['num'].text),
                    detialContactText(Text: contactList[0]['EAdd'].text),
                    detialContactText(Text: contactList[0]['add'].text),
                    detialContactText(Text: contactList[0]['web'].text),
                    columnTitle(text: 'Skills'),

                    ...List.generate(
                      skillList.length,
                      (index) => pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          detialContactText(
                              Text: skillList[index]['skill'].text),
                          detialContactText(
                              Text: skillList[index]['year'].text),
                        ],
                      ),
                    ),
                    columnTitle(text: 'Language'),
                    ...List.generate(
                      langList.length,
                      (index) => pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          detialContactText(Text: langList[index]['lan'].text),
                        ],
                      ),
                    ),
                    pw.SizedBox(height: 20)
                  ],
                ),
              ),
              pw.Padding(
                padding: pw.EdgeInsets.only(left: 287),
                child: pw.Container(
                  // color: PdfColors.blue,
                  width: 300,
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      textColumFor2(
                          text: contactList[0]['web'].text,
                          textForTitle: profiletList[0]['name'].text,
                          paddingForText: true,
                          textSize: true,
                          colorForDivider: true,
                          isTitle: true),
                      textColumFor2(
                        textForTitle: 'About Me',
                        text: profiletList[0]['aboutme'].text,
                        paddingForText: false,
                        textSize: false,
                        colorForDivider: false,
                        isTitle: true,
                      ),
                      pw.Padding(
                        padding: pw.EdgeInsets.only(top: 20),
                        child: pw.Text(
                          'Expirations',
                          style: pw.TextStyle(
                            color: PdfColors.black,
                            fontSize: 25,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                      ),
                      pw.Divider(
                          thickness: 2, color: PdfColors.black, endIndent: 90),
                      ...List.generate(
                        experinceList.length,
                        (index) => pw.Column(
                          children: [
                            pw.Row(
                              children: [
                                textColumFor2(
                                  textForTitle: 'no',
                                  text: experinceList[index]['company'].text,
                                  paddingForText: false,
                                  textSize: false,
                                  colorForDivider: false,
                                  isTitle: false,
                                ),
                                pw.SizedBox(width: 10),
                                textColumFor2(
                                  textForTitle: 'no',
                                  text: experinceList[index]['postion'].text,
                                  paddingForText: false,
                                  textSize: false,
                                  colorForDivider: false,
                                  isTitle: false,
                                )
                              ],
                            ),
                            pw.SizedBox(height: 3),
                            pw.Row(
                              children: [
                                textColumFor2(
                                  textForTitle: 'no',
                                  text: experinceList[index]['start'].text,
                                  paddingForText: false,
                                  textSize: false,
                                  colorForDivider: false,
                                  isTitle: false,
                                ),
                                pw.SizedBox(width: 10),
                                textColumFor2(
                                  textForTitle: 'no',
                                  text: experinceList[index]['end'].text,
                                  paddingForText: false,
                                  textSize: false,
                                  colorForDivider: false,
                                  isTitle: false,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      pw.Padding(
                        padding: pw.EdgeInsets.only(top: 20),
                        child: pw.Text(
                          'Education',
                          style: pw.TextStyle(
                            color: PdfColors.black,
                            fontSize: 25,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                      ),
                      ...List.generate(
                        eduList.length,
                        (index) => pw.Column(
                          children: [
                            pw.Divider(
                                thickness: 2,
                                color: PdfColors.black,
                                endIndent: 90),
                            pw.Row(
                              children: [
                                textColumFor2(
                                  textForTitle: 'no',
                                  text: eduList[index]['school'].text,
                                  paddingForText: false,
                                  textSize: false,
                                  colorForDivider: false,
                                  isTitle: false,
                                ),
                                pw.SizedBox(width: 10),
                                textColumFor2(
                                  textForTitle: 'no',
                                  text: eduList[index]['degree'].text,
                                  paddingForText: false,
                                  textSize: false,
                                  colorForDivider: false,
                                  isTitle: false,
                                )
                              ],
                            ),
                            pw.SizedBox(height: 3),
                            pw.Row(
                              children: [
                                textColumFor2(
                                  textForTitle: 'no',
                                  text: eduList[index]['start'].text,
                                  paddingForText: false,
                                  textSize: false,
                                  colorForDivider: false,
                                  isTitle: false,
                                ),
                                pw.SizedBox(width: 10),
                                textColumFor2(
                                  textForTitle: 'no',
                                  text: eduList[index]['end'].text,
                                  paddingForText: false,
                                  textSize: false,
                                  colorForDivider: false,
                                  isTitle: false,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      pw.Padding(
                        padding: pw.EdgeInsets.only(top: 20),
                        child: pw.Text(
                          'Certificate',
                          style: pw.TextStyle(
                            color: PdfColors.black,
                            fontSize: 25,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                      ),
                      ...List.generate(
                        certificateList.length,
                        (index) => pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          children: [
                            pw.Divider(
                                thickness: 2,
                                color: PdfColors.black,
                                endIndent: 90),
                            pw.Row(
                              children: [
                                textColumFor2(
                                  textForTitle: 'no',
                                  text: certificateList[index]['Name'].text,
                                  paddingForText: false,
                                  textSize: false,
                                  colorForDivider: false,
                                  isTitle: false,
                                ),
                                pw.SizedBox(width: 10),
                                textColumFor2(
                                  textForTitle: 'no',
                                  text:
                                      certificateList[index]['institute'].text,
                                  paddingForText: false,
                                  textSize: false,
                                  colorForDivider: false,
                                  isTitle: false,
                                )
                              ],
                            ),
                             pw.SizedBox(height: 3),
                            pw.Row(
                              children: [
                                textColumFor2(
                                  textForTitle: 'no',
                                  text: certificateList[index]['start'].text,
                                  paddingForText: false,
                                  textSize: false,
                                  colorForDivider: false,
                                  isTitle: false,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    ),
  );
  return pdf.save();
}
