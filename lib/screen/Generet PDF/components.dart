// import 'package:pdf/widgets.dart' as pw;
// import 'package:pdf/pdf.dart';
//
//
// import '../../utils/global.dart';
// import 'Colum_title.dart';
//
// pw.Widget mainContainer()async{
//   return pw.Container(
//     width: 215,
//     child: pw.Column(
//       crossAxisAlignment: pw.CrossAxisAlignment.start,
//       mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
//       children: [
//         //pw.SizedBox(height: 100),
//         pw.Padding(
//           padding: pw.EdgeInsets.only(left: 18, top: 80),
//           child: pw.Container(
//             height: 190,
//             width: 200,
//             decoration: pw.BoxDecoration(
//               color: PdfColors.blue,
//               border:
//               pw.Border.all(color: PdfColors.blue, width: 2),
//             ),
//             child: pw.Image(profileimage, fit: pw.BoxFit.cover),
//           ),
//         ),
//         columnTitle(text: 'Contact'),
//         detialContactText(Text: contactList[0]['num'].text),
//         detialContactText(Text: contactList[0]['EAdd'].text),
//         detialContactText(Text: contactList[0]['add'].text),
//         detialContactText(Text: contactList[0]['web'].text),
//         columnTitle(text: 'Skills'),
//
//
//         ...List.generate(
//           skillList.length,
//               (index) =>pw.Row(
//             mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//             children: [
//               detialContactText(Text: skillList[index]['skill'].text),
//               detialContactText(Text: skillList[index]['year'].text),
//             ],
//           ),
//         ),
//         columnTitle(text: 'Language'),
//         ...List.generate(
//           langList.length,
//               (index) =>pw.Row(
//             mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
//             children: [
//               detialContactText(Text: langList[index]['lan'].text),
//             ],
//           ),
//         ),
//         pw.SizedBox(height: 20)
//       ],
//
//     ),
//   ),
// }