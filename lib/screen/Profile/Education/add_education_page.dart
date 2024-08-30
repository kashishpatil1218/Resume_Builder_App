import 'package:flutter/material.dart';
import 'package:resumebuilderapp/screen/Profile/components/textfield_methode.dart';
import 'package:resumebuilderapp/utils/global.dart';

class add_education_page extends StatefulWidget {
  const add_education_page({super.key});

  @override
  State<add_education_page> createState() => _add_education_pageState();
}

class _add_education_pageState extends State<add_education_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        shadowColor: Colors.black,
        title: const Text(
          'Education',
          style:
              TextStyle(color: Color(0xFF1F2544), fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              eduList.length,
              (index) => DetailOfEducation(index: index),
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
                eduList.add({
                  'school': TextEditingController(),
                  'degree': TextEditingController(),
                  'start': TextEditingController(),
                  'end': TextEditingController(),
                  'grade': TextEditingController(),
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

  Column DetailOfEducation({required int index}) {
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
                    if (eduList.length != 1) {
                      eduList.removeLast();
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
          child: Title_txt(text: "School"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: textfeild_Method(
              hint: 'University of any Town',
              isAddress: false,
              isPhone: false,
              controller: eduList[index]['school'],
              isNumber: false),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Title_txt(text: "Level"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: textfeild_Method(
              hint: 'Master',
              isAddress: false,
              isPhone: false,
              controller: eduList[index]['degree'],
              isNumber: false),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Title_txt(text: "Grade/GPA (Optional)"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: textfeild_Method(
              hint: '3.5D/4.00/B+',
              isAddress: false,
              isPhone: false,
              controller: eduList[index]['grade'],
              isNumber: false),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Title_txt(text: "Start Year"),
            ),
            SizedBox(
              width: 95,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Title_txt(text: "End Year"),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfeild_Method(
                    hint: '1999',
                    isAddress: false,
                    isPhone: false,
                    controller: eduList[index]['start'],
                    isNumber: true),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfeild_Method(
                    hint: '2002',
                    isAddress: false,
                    isPhone: false,
                    controller: eduList[index]['end'],
                    isNumber: true),
              ),
            ),
          ],
        )
      ],
    );
  }
}
