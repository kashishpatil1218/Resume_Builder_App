import 'package:flutter/material.dart';

import '../components/textfield_methode.dart';
class skill_page extends StatefulWidget {
  const skill_page({super.key});

  @override
  State<skill_page> createState() => _skill_pageState();
}

class _skill_pageState extends State<skill_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        shadowColor: Colors.black,
        title: const Text(
          'Skill',
          style:
          TextStyle(color: Color(0xFF1F2544), fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Title_txt(text: 'Skill'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfeild_Method(
                hint: 'Flutter', isAddress: false, isPhone: false),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Title_txt(text: 'Experience'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfeild_Method(
                hint: '2 Years', isAddress: false, isPhone: false),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal:110),
            child: GestureDetector(
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Color(0xFF1F2544),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Center(
                    child: Text(
                      'Add skill',
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
