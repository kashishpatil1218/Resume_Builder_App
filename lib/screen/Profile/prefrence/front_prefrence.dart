import 'package:flutter/material.dart';

class front_pre_page extends StatefulWidget {
  const front_pre_page({super.key});

  @override
  State<front_pre_page> createState() => _front_pre_pageState();
}

class _front_pre_pageState extends State<front_pre_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Prefrence',
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
              'You haven`t added any Prefrence yet.Start\nadding & Complete your CV!',
              style: TextStyle(
                  color: Color(0xFF1F2544), fontWeight: FontWeight.bold),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/pre');
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
                  "Add Prefrence",
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
