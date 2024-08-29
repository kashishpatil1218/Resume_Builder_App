

import 'package:flutter/material.dart';

TextField textfeild_Method({required String hint , required bool isAddress ,required bool isPhone}) {

  return TextField(
    maxLines: isAddress?4:1,

    decoration: InputDecoration(
      hintText:hint,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white12),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF1F2544)),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}

Widget Title_txt({required String text}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      text,
      style: TextStyle(
          color: Color(0xFF1F2544), fontWeight: FontWeight.bold),
    ),
  );
}