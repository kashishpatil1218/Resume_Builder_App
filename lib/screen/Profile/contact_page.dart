import 'package:flutter/material.dart';

import '../../utils/global.dart';
import 'components/textfield_methode.dart';

class contact_page extends StatefulWidget {
  const contact_page({super.key});

  @override
  State<contact_page> createState() => _contact_pageState();
}

class _contact_pageState extends State<contact_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact',
          style:
              TextStyle(color: Color(0xFF1F2544), fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              contactList.length,
                  (index) => Contact_detail(index: index),
            ),
          ],
        )
      ),
    );
  }

  Column Contact_detail({required int index}) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Title_txt(text: 'Email Address'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfeild_Method(
                hint: 'johnsmith@123gamil.com', isAddress: false,isPhone: false,controller: contactList[index]['EAdd'],isNumber: false),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Title_txt(text: "Phone Number"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfeild_Method(hint: '1234567890', isAddress: false,isPhone: true,controller: contactList[index]['num'],isNumber: true),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Title_txt(text: "Address"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfeild_Method(
                hint: '12-shelly street,Sydney,NSW 2000,Australia.',
                isAddress: true,isPhone: false,controller: contactList[index]['add'],isNumber: false),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Title_txt(text: "Personal Website (Optional)"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfeild_Method(hint: 'Nswanimate.in', isAddress: false,isPhone: false,controller: contactList[index]['web'],isNumber: false),
          ),
          SizedBox(
            height: 10,
          ),


        ],
      );
  }
}
