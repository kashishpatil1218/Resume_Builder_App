import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../utils/global.dart';

pw.Widget textColumFor2(
    {required String textForTitle,
    required String text,
    required bool paddingForText,
    required bool textSize,
    required bool colorForDivider,
      required bool isTitle
    }) {
  return pw.Column(
    crossAxisAlignment: pw.CrossAxisAlignment.start,
    children: [
      isTitle?
      pw.Padding(
        padding: paddingForText
            ? pw.EdgeInsets.only(top: 100)
            : pw.EdgeInsets.only(top: 20),
        child: pw.Text(
          textForTitle,
          style: pw.TextStyle(
            color: PdfColors.black,
            fontSize: textSize ? 30 : 25,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
      ):pw.Padding(padding: pw.EdgeInsets.zero),

      pw.Text(
        text,
        style: const pw.TextStyle(fontSize: 18),
      ),
      colorForDivider
          ? pw.Divider(
              color: PdfColors.blue,
              endIndent: 30,
              thickness: 2,
            )
          : pw.Padding(
              padding: pw.EdgeInsets.zero,
            ),
    ],
  );
}
