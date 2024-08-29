import 'package:flutter/material.dart';

class Start1_page extends StatefulWidget {
  const Start1_page({super.key});

  @override
  State<Start1_page> createState() => _Start1_pageState();
}

class _Start1_pageState extends State<Start1_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F2544),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
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
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF1F2544),
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image: AssetImage('assets/img/S1.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'JUBI allows you to create your create resumes with many tamplates and share them.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF1F2544),
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                ),
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
      ),
    );
  }
}
