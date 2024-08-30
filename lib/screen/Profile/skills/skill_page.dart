import 'package:flutter/material.dart';
import 'package:resumebuilderapp/utils/global.dart';

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
      body: SingleChildScrollView(
        child:Column(
          children: [
            ...List.generate(
              skillList.length,
                  (index) => SkillMethod(index: index),
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
                skillList.add({
                  'skill': TextEditingController(),
                  'year': TextEditingController(),
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

  Column SkillMethod({required int index}) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Title_txt(text: 'Skill'),
              ),
              SizedBox(
                width: 140,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 15),
                child: Title_txt(text: 'Experience'),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfeild_Method(
                      hint: 'Flutter', isAddress: false, isPhone: false,controller: skillList[index]['skill'],isNumber: false),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:2,right:30),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (skillList.length != 1) {
                          skillList.removeLast();
                        }
                      });
                    },
                    icon: const Icon(
                      Icons.highlight_remove,
                      size: 25,
                      color: Color(0xFF5255C1),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: textfeild_Method(
                      hint: '2 Years', isAddress: false, isPhone: false,controller: skillList[index]['year'],isNumber: true),
                ),
              ),
            ],
          ),

        ],
      );
  }
}
