import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';

import '../../utils/global.dart';

pw.Widget columnTitle({required String text})
{
  return pw.Column(
    crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Padding(padding: pw.EdgeInsets.only(left: 18,top: 20),
          child: pw.Text(
            text,
            style: pw.TextStyle(
                color: PdfColors.white,
                fontSize: 25,
                fontWeight: pw.FontWeight.bold),
          ),
        ),
        pw.Divider(
          color: PdfColors.white,
          thickness: 2,
        ),
      ]
  );
}

pw.Widget detialContactText({required Text}){
  return  pw.Padding(
    padding: pw.EdgeInsets.only(left: 18,top:10),
    child: pw.Text(
      Text,
      maxLines:1,
      style:
      pw.TextStyle(color: PdfColors.white, fontSize: 20),
    ),
  );
}
