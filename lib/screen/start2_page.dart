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
            padding: const EdgeInsets.only(top: 180),
            child: Container(
              height: 260,
              width: double.infinity,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/img/st2.jpeg'),
                ),
              ),

            ),
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
                  Text('Write a Resume Thats Gets\nYou Hired',style: TextStyle(color: Color(0xFF0FF1F2544)),),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/start2');
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
                          'Get Started',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'By countinue you accept our\n',
                          style: TextStyle(color: Colors.grey,fontSize:10,fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Term of Use ',
                          style: TextStyle(color: Color(0xFF1F2544),fontSize:10,fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '& ',
                          style: TextStyle(color: Colors.grey,fontSize:10,fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Privicy Policy',
                          style: TextStyle(color: Color(0xFF1F2544),fontSize:10,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
                       ),
           ),

        ],
      ),
    );
  }
}
