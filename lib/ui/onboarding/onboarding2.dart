import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_project_class/ui/onboarding/onboarding1.dart';
import 'package:ui_project_class/ui/page/login.dart';
import 'package:ui_project_class/ui/page/signup.dart';
import 'package:ui_project_class/ui/widget/custombutton.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: -100,
              left: -20,
              child: Transform.rotate(
                angle: pi / 5,
                child: Container(
                  height: MediaQuery.of(context).size.height*0.5,
                  width: MediaQuery.of(context).size.height * 0.7,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff8E8E93)),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create a Task and Assign it to Your Team Members",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.04,
                  ),
                  Image.asset("images/Slider2.png"),
                  SizedBox(height: MediaQuery.of(context).size.height*0.04,),

                  CustomButton(
                    title: "SingUp",
                    ontab: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp()));

                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),

                  CustomButton(
                    isblue: true,
                    title: "Login",
                    ontab: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));

                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.05,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
