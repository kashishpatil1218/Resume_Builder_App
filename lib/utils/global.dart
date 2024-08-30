import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

ImagePicker imagePicker = ImagePicker();
File? fileImg;
//gender
String gender='Female';
List detailsList = [
  {'name': 'Personal'},
  {'name': 'Contact'},
  {'name': 'Education'},
  {'name': 'Experience'},
  {'name': 'Certificate'},
  {'name': 'Language'},
  {'name': 'Skills'},
];

List eduList = [
  {
    'school': TextEditingController(text: "RK University"),
    'degree': TextEditingController(text: "B.E in CS"),
    'start': TextEditingController(text: "2024"),
    'end': TextEditingController(text: "2024"),
    'grade': TextEditingController(text: "8.97"),
  }
];

//for certificates

List certificateList = [
  {
    'Name': TextEditingController(),
    'institute': TextEditingController(),
    'start': TextEditingController(),
    'end': TextEditingController(),
    'summary': TextEditingController(),
  }
];

//for experinece

List experinceList = [
  {
    'company': TextEditingController(),
    'postion': TextEditingController(),
    'type': TextEditingController(),
    'start': TextEditingController(),
    'end': TextEditingController(),
    'summary': TextEditingController(),
  }
];


List refereceList = [
  {
    'f_name': TextEditingController(),
    'postion_title': TextEditingController(),
    'cmp': TextEditingController(),
    'num': TextEditingController(),
    'email': TextEditingController(),

  }
];

List contactList = [
  {
    'EAdd': TextEditingController(),
    'num': TextEditingController(),
    'add': TextEditingController(),
    'web': TextEditingController(),
  }
];
List profiletList = [
  {
    'name': TextEditingController(),
    'title': TextEditingController(),
    'aboutme': TextEditingController(),

  }
];

List skillList = [
  {
    'skill': TextEditingController(),
    'year': TextEditingController(),
  }
];
List langList = [
  {
    'lan': TextEditingController(),


  }
];
