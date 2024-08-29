import 'package:flutter/material.dart';

import 'components/textfield_methode.dart';

class myDetail_page extends StatefulWidget {
  const myDetail_page({super.key});

  @override
  State<myDetail_page> createState() => _myDetail_pageState();
}

class _myDetail_pageState extends State<myDetail_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style:
              TextStyle(color: Color(0xFF1F2544), fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15),
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFDBDBDB),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/img/profile_de.png',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Full Name",
                          style: TextStyle(
                              color: Color(0xFF1F2544),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 50,
                          width: 200,
                          child: textfeild_Method(hint: "John Smith",isAddress: false),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Title_txt(text: 'Position/Title'),
            ),
            textfeild_Method(hint: 'Project Manager',isAddress: false),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Title_txt(text: "About Me"),
            ),
            textfeild_Method(hint: 'Ex',isAddress:true),
          ],
        ),
      ),
    );
  }




}
