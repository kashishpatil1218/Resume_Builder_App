import 'package:flutter/material.dart';

import '../components/textfield_methode.dart';

class prefrance_Page extends StatefulWidget {
  const prefrance_Page({super.key});

  @override
  State<prefrance_Page> createState() => _prefrance_PageState();
}

class _prefrance_PageState extends State<prefrance_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        shadowColor: Colors.black,
        title: const Text(
          'Reference',
          style:
              TextStyle(color: Color(0xFF1F2544), fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Title_txt(text: "Full Name"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfeild_Method(
                  hint: 'Adam Rush', isAddress: false, isPhone: false),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Title_txt(text: "Position Title"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfeild_Method(
                  hint: '3D Artist', isAddress: false, isPhone: false),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Title_txt(text: "Company/Organization Name (Optional)"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfeild_Method(
                  hint: 'Microsoft', isAddress: false, isPhone: false),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Title_txt(text: "Phone Number"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfeild_Method(
                  hint: '1234567890', isAddress: false, isPhone: true),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Title_txt(text: "Email Address"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfeild_Method(
                  hint: 'adm123@gmail.com', isAddress: false, isPhone: false),
            ),
            Center(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.highlight_remove,
                  size: 30,
                  color: Color(0xFF5255C1),
                ),
              ),
            ),
            //for Add refrence Detalis
            Padding(
              padding: const EdgeInsets.only(left: 320),
              child: Container(
                height: 50,
                width: 50,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Color(0xFF5255C1),
                  child: Icon(Icons.add),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
