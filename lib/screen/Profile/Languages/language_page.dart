import 'package:flutter/material.dart';
import 'package:resumebuilderapp/screen/Profile/components/textfield_methode.dart';
import 'package:resumebuilderapp/utils/global.dart';

class language_page extends StatefulWidget {
  const language_page({super.key});

  @override
  State<language_page> createState() => _language_pageState();
}

class _language_pageState extends State<language_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        shadowColor: Colors.black,
        title: const Text(
          'Language',
          style:
              TextStyle(color: Color(0xFF1F2544), fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              langList.length,
              (index) => Language_methode(index: index),
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
                langList.add({
                  'lan': TextEditingController(),
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

  Column Language_methode({required int index}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Title_txt(text: 'Language'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: textfeild_Method(
                    hint: 'Hindi',
                    isAddress: false,
                    isPhone: false,
                    controller: langList[index]['lan'],
                    isNumber: false),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    langList.removeLast();
                  });
                },
                icon: const Icon(
                  Icons.highlight_remove,
                  color: Color(0xFF5255C1),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
