import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class education_page extends StatefulWidget {
  const education_page({super.key});

  @override
  State<education_page> createState() => _education_pageState();
}

class _education_pageState extends State<education_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Education',
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
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Text(
              textAlign: TextAlign.center,
              'You haven`t added any education yet.Start\nadding & Complete your CV!',
              style: TextStyle(
                  color: Color(0xFF1F2544), fontWeight: FontWeight.bold),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/addedu');
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
                  "Add Education",
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
