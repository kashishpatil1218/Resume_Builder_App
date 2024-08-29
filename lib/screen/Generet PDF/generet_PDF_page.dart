import 'package:flutter/material.dart';
class generate_PDF_Page extends StatefulWidget {
  const generate_PDF_Page({super.key});

  @override
  State<generate_PDF_Page> createState() => _generate_PDF_PageState();
}

class _generate_PDF_PageState extends State<generate_PDF_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Generat PDf',
          style:
          TextStyle(color: Color(0xFF1F2544), fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Image(
              height: 280,
              width: 280,
              image: AssetImage('assets/img/adding_edu.png'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 55),
            child: Text(
              textAlign: TextAlign.center,
              'You haven`t Generat PDF yet.Start\nadding & Complete your CV!',
              style: TextStyle(
                  color: Color(0xFF1F2544), fontWeight: FontWeight.bold),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/PDF');
            },
            child: Container(
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                color: Color(0xFF1F2544),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(
                child: Text(
                  "Generat PDF",
                  style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
