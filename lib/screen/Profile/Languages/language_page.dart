import 'package:flutter/material.dart';
import 'package:resumebuilderapp/screen/Profile/components/textfield_methode.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Title_txt(text: 'Language'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfeild_Method(
                hint: 'Hindi', isAddress: false, isPhone: false),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal:110),
            child: GestureDetector(
              child: Container(
                height: 50,
                width: 170,
                decoration: BoxDecoration(
                  color: Color(0xFF1F2544),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Center(
                    child: Text(
                  'Add Language',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
