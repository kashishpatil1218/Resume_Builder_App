import 'package:flutter/material.dart';

class frontExp_page extends StatefulWidget {
  const frontExp_page({super.key});

  @override
  State<frontExp_page> createState() => _frontExp_pageState();
}

class _frontExp_pageState extends State<frontExp_page> {
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
              'You haven`t added any Experience yet.Start\nadding & Complete your CV!',
              style: TextStyle(
                  color: Color(0xFF1F2544), fontWeight: FontWeight.bold),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/exp');
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
                  "Add Experience",
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
