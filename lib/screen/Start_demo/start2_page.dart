import 'package:flutter/material.dart';

class Start2_page extends StatefulWidget {
  const Start2_page({super.key});

  @override
  State<Start2_page> createState() => _Start2_pageState();
}

class _Start2_pageState extends State<Start2_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFF5255C1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 85),
            child: Container(
              height:315,
              width: double.infinity,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/img/brunette-businesswoman-showing-her-tablet.jpg'),
                ),
              ),
            ),
          ),

          // Padding(
          //   padding:  EdgeInsets.only(right:300,),
          //   child: Image(image:AssetImage('assets/img/sparkling-removebg-preview.png'),height: 50,width: 50,),
          // ),
          SizedBox(
            height:40,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  const Text(
                    'Write a Resume Thats Gets\nYou Hired',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0FF1F2544),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'By using the JUBI job seekers can improve\ntheir changes of landing an interview for\nthier desires Job.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12,color: Colors.black54),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/start3');
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
                          'Countinue',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
