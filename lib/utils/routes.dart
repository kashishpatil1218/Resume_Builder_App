import 'package:flutter/material.dart';


import '../screen/Generet PDF/generet_PDF_page.dart';
import '../screen/Generet PDF/pdf_page.dart';
import '../screen/Profile/Certificates/certificate_page.dart';
import '../screen/Profile/Certificates/front_certificate_page.dart';
import '../screen/Profile/Education/add_education_page.dart';
import '../screen/Profile/Experince/FrontExp_page.dart';
import '../screen/Profile/Experince/experience_page.dart';
import '../screen/Profile/Languages/frontLanguage_page.dart';
import '../screen/Profile/Languages/language_page.dart';
import '../screen/Profile/contact_page.dart';
import '../screen/Profile/Education/education_page.dart';
import '../screen/Profile/my_detail_page.dart';
import '../screen/Profile/prefrence/front_prefrence.dart';
import '../screen/Profile/prefrence/prefrece_page.dart';
import '../screen/Profile/profile_page.dart';
import '../screen/Profile/skills/front_skill_page.dart';
import '../screen/Profile/skills/skill_page.dart';
import '../screen/Start_demo/splash_page.dart';
import '../screen/Start_demo/start1_page.dart';
import '../screen/Start_demo/start2_page.dart';
import '../screen/Start_demo/start3_page.dart';


Map<String, Widget Function(BuildContext context)> routes = {
  '/':(context) => const Splash_page(),
  '/start1':(context) => const Start1_page(),
  '/start2':(context) => const Start2_page(),
  '/start3':(context) => const Start3_page(),
  '/pro':(context) => const  profile_page(),
  '/profile':(context) => const  myDetail_page(),
  '/contact':(context) => const  contact_page(),
  '/edu':(context) => const  education_page(),
  '/addedu':(context) => const add_education_page(),
  '/exp':(context) => const experince_page(),
  '/frontexp':(context) => const frontExp_page(),
  '/certificate':(context) => const certificates_page(),
  '/frontCerti':(context) => const front_certificate_page(),
  '/frontLang':(context) => const front_Language_page(),
  '/Lan':(context) => const language_page(),
  '/fskill':(context) => const front_skill_page(),
  '/skill':(context) => const skill_page(),
  '/fpre':(context) => const front_pre_page(),
  '/pre':(context) => const prefrance_Page(),
  '/GeneretPDF':(context) => const generate_PDF_Page(),
  '/PDF':(context) => const pdf_page(),
};

