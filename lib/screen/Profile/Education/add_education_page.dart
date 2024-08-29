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
        elevation:8,
        shadowColor: Colors.black,
        title: const Text(
          'Education',
          style:
              TextStyle(color: Color(0xFF1F2544), fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:15,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  IconButton(
                      onPressed: () {
        
                      },
                      icon: Icon(
                        Icons.delete_outline,
                        color: Colors.black,
                        size: 25,
                      ),),
                ],
              ),
            ),
            Padding(
              padding:const EdgeInsets.only(left: 10),
              child: Title_txt(text: "School"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfeild_Method(
                  hint: 'University of any Town', isAddress: false,isPhone: false),
            ),
            SizedBox(height: 10,),
            Padding(
              padding:const EdgeInsets.only(left: 10),
              child: Title_txt(text: "Level"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfeild_Method(
                  hint: 'Master', isAddress: false,isPhone: false),
            ),
            SizedBox(height: 10,),
            Padding(
              padding:const EdgeInsets.only(left: 10),
              child: Title_txt(text: "Grade/GPA (Optional)"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfeild_Method(
                  hint: '3.5D/4.00/B+', isAddress: false,isPhone: false),
            ),
            SizedBox(height: 10,),
            Padding(
              padding:const EdgeInsets.only(left: 10),
              child: Title_txt(text: "Start Year"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfeild_Method(
                  hint: '1999', isAddress: false,isPhone: false),
            ),
            SizedBox(height: 10,),
            Padding(
              padding:const EdgeInsets.only(left: 10),
              child: Title_txt(text: "End Year"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfeild_Method(
                  hint: '2002', isAddress: false,isPhone: false),
            ),
            //for Add Education Detalis
            Padding(
              padding: const EdgeInsets.only(left:320),
              child: Container(
                height: 50,
                width: 50,
                child: FloatingActionButton(onPressed: () {

                },backgroundColor: Color(0xFF5255C1),
                  child: Icon(Icons.add),),
              ),
            ),
          ],
        ),

      ),

    );
  }
}
