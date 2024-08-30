import 'package:flutter/material.dart';

import '../../../utils/global.dart';
import '../components/textfield_methode.dart';

class certificates_page extends StatefulWidget {
  const certificates_page({super.key});

  @override
  State<certificates_page> createState() => _certificates_pageState();
}

class _certificates_pageState extends State<certificates_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        shadowColor: Colors.black,
        title: const Text(
          'Certificates',
          style:
              TextStyle(color: Color(0xFF1F2544), fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              certificateList.length,
              (index) => Certifications(index: index),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 320),
        child: Container(
          height: 50,
          width: 50,
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                certificateList.add({
                  'Name': TextEditingController(),
                  'institute': TextEditingController(),
                  'year': TextEditingController(),
                  'summary': TextEditingController(),
                });
              });
            },
            backgroundColor: Color(0xFF5255C1),
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }

  Column Certifications({required int index}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${index + 1}',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (certificateList.length != 1) {
                      certificateList.removeLast();
                    }
                  });
                },
                icon: Icon(
                  Icons.delete_outline,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Title_txt(text: "Certificate Name"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: textfeild_Method(
              hint: 'Google Ads',
              isAddress: false,
              isPhone: false,
              controller: certificateList[index]['Name'],
              isNumber: false),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Title_txt(text: "Institute Name"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: textfeild_Method(
              hint: 'InnovateX Trainning',
              isAddress: false,
              isPhone: false,
              controller: certificateList[index]['institute'],
              isNumber: false),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Title_txt(text: "Certification Year"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: textfeild_Method(
              hint: '2023',
              isAddress: false,
              isPhone: false,
              controller: certificateList[index]['year'],
              isNumber: true),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Title_txt(text: "Summary"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: textfeild_Method(
              hint:
                  'Summarize your certificates briefly highlighting relevent qualifications and experties',
              isAddress: true,
              isPhone: false,
              controller: certificateList[index]['summary'],
              isNumber: false),
        ),
      ],
    );
  }
}
