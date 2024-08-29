import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../utils/global.dart';

class Start4_page extends StatefulWidget {
  const Start4_page({super.key});

  @override
  State<Start4_page> createState() => _Start4_pageState();
}

class _Start4_pageState extends State<Start4_page> {
  int _current = 0;
  final CarouselSliderControllerImpl _controller =
      CarouselSliderControllerImpl();

  final List<String> imgList = [
    'assets/img/startTamplate1.png',
    'assets/img/stratTemplate2.png',
    'assets/img/startTemplate3.png',
    'assets/img/startTamplate4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F2544),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: CarouselSlider.builder(
              itemCount: imgList.length,
              carouselController: _controller,
              itemBuilder: (context, index, realIdx) {
                return Container(
                  height: 800,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          imgList[index],
                        ),
                      ),),
                  // child: ClipRRect(
                  //   borderRadius: BorderRadius.all(Radius.circular(10)),
                  //   child: Column(
                  //     children: [
                  //       Container(
                  //           padding: EdgeInsets.symmetric(
                  //               vertical: 10, horizontal: 20),
                  //         ),
                  //
                  //     ],
                  //   ),
                  // ),
                );
              },
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    height: 10,
                    width: 10,
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            _current == entry.key ? Colors.grey : Colors.black),
                  ),
                );
              }).toList()),
          SizedBox(height:200),
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
                    'AI Powered CV Templates\nthat Impress HR\nProfessionals',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0FF1F2544),
                    ),
                  ),
                  SizedBox(height: 20,),
                  const Text(
                    'JUBI Provide a Collection of high-Quality\ntemplates that help jobseekers create\nProfessional-looking CVs.',
                    textAlign: TextAlign.center,style: TextStyle(fontSize: 12,color: Colors.black54)),
                  SizedBox(
                    height: 10,
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
