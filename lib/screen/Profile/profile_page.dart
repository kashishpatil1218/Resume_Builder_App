import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/global.dart';

class profile_page extends StatefulWidget {
  const profile_page({super.key});

  @override
  State<profile_page> createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style:
              TextStyle(color: Color(0xFF1F2544), fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/profile");
              },
              child: Home_cetogory("Personal",Icons.person_2_outlined),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/contact");
              },
              child: Home_cetogory("Contact",Icons.contact_emergency_outlined),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/edu");
              },
              child: Home_cetogory("Education",Icons.workspace_premium),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/frontexp");
              },
              child: Home_cetogory("Experience",Icons.file_copy_outlined),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/frontCerti");
              },
              child: Home_cetogory("Certificates",Icons.redeem),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/frontLang");
              },
              child: Home_cetogory("Language",Icons.language),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/fskill");
              },
              child: Home_cetogory("Skills",Icons.star_border),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/fpre");
              },
              child: Home_cetogory("Reference",Icons.article_outlined),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/GeneretPDF");
              },
              child: Home_cetogory("Generate PDF",Icons.picture_as_pdf_outlined),
            ),
          ],
        ),
      ),
    );
  }

  Widget Home_cetogory(String Name ,IconData icon) {
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Color(0xFF1F2544)),
        child: Padding(
          padding:  EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Icon(icon,color: Colors.white,),
              SizedBox(width: 10,),
              Text(
                '$Name',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
