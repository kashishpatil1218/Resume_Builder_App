import 'package:flutter/material.dart';

class Start3_page extends StatefulWidget {
  const Start3_page({super.key});

  @override
  State<Start3_page> createState() => _Start3_pageState();
}

class _Start3_pageState extends State<Start3_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5255C1),
      body: Column(
        children: [
          Expanded(

            child: Padding(
              padding:  EdgeInsets.only(left:300,top:20),
              child: Image(image:AssetImage('assets/img/sparkling-removebg-preview.png'),height:100,width:100,),
            ),
          ),
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.only(top:80),
              child: Container(
                height: 295,
                width: double.infinity,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/img/ST#.jpg'),
                  ),
                ),
              ),
            ),
          ),


          SizedBox(height: 10,),
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
                    'Recruiter-Approved\nResume Builder',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0FF1F2544),
                    ),
                  ),
                  SizedBox(height: 20,),
                  const Text(
                    'By using the JUBI job seekers can improve\ntheir changes of landing an interview for\nthier desires Job.',
                    textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: Colors.black54),),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/pro');
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
