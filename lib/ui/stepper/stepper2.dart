import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_project_class/ui/stepper/stepper3.dart';
import 'package:ui_project_class/ui/widget/costomtextfild.dart';
import 'package:ui_project_class/ui/widget/custombutton.dart';

class Stepper2 extends StatelessWidget {
  const Stepper2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width*0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "images/xross.png",
                    height: 50,
                    width: 50,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.2,
                  ),
                  Image.asset(
                    "images/stepper2.png",
                    height: 50,
                    width: 70,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              CustomButton(
                title: "Create Your Own Team",
                ontab: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Stepper3()));
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
              Text(
                "Or",
                style: GoogleFonts.nunito(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height:MediaQuery.of(context).size.height*0.01,
              ),
              CustomButton(
                isblue: true,
                title: "Join Team",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
