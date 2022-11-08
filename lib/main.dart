import 'package:flutter/material.dart';
import 'package:ui_project_class/ui/onboarding/onbord_pajeview.dart';
import 'package:ui_project_class/ui/page/bottomnavigation.dart';
import 'package:ui_project_class/ui/page/homepage.dart';
import 'package:ui_project_class/ui/page/project.dart';
import 'package:ui_project_class/ui/page/signup.dart';
import 'package:ui_project_class/ui/page/splash.dart';
import 'package:ui_project_class/ui/page/teem_member.dart';
import 'package:ui_project_class/ui/stepper/stepper1.dart';
import 'package:ui_project_class/ui/stepper/stepper2.dart';
import 'package:ui_project_class/ui/stepper/stepper3.dart';
import 'package:ui_project_class/ui/stepper/stepper4.dart';
import 'package:ui_project_class/ui/stepper/stepper5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff191A22),
      ),
      home: Splash(),
    );
  }
}
