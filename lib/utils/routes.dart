import 'package:flutter/material.dart';

import '../screen/splash_page.dart';
import '../screen/start1_page.dart';
import '../screen/start2_page.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  '/':(context) => const Splash_page(),
  '/start1':(context) => const Start1_page(),
  '/start2':(context) => const Start2_page(),
};