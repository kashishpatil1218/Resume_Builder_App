import 'dart:async';

import 'package:flutter/material.dart';

class Splash_page extends StatefulWidget {
  const Splash_page({super.key});

  @override
  State<Splash_page> createState() => _Splash_pageState();
}

class _Splash_pageState extends State<Splash_page> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration (seconds:5), (timer) {
      Navigator.of(context).pushReplacementNamed('/start1');
      },);
    return const Scaffold(
      backgroundColor: Color(0xFF1F2544),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/img/logo.png'),
            ),
            Text(
              'Resume Builder',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  height: 0.2),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: CircularProgressIndicator(
                backgroundColor: Colors.white12,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
