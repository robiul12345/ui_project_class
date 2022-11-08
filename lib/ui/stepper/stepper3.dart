import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_project_class/ui/stepper/stepper4.dart';
import 'package:ui_project_class/ui/widget/costomtextfild.dart';
import 'package:ui_project_class/ui/widget/custombutton.dart';

class Stepper3 extends StatelessWidget {
  const Stepper3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
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
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                  Image.asset(
                    "images/stepper3.png",
                    height: 50,
                    width: 70,
                  ),
                ],
              ),
              Text(
                "Create Your own Team?",
                style: GoogleFonts.nunito(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              CustomTextFild(
                label: "Your Team Name ",
                prefixicon: Icon(
                  Icons.person_pin,
                  color: Colors.white,
                ),
                hinttxt: "e.g Parto Team",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,

              ),
              Spacer(),
              CustomButton(
                ontab: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Stepper4()));
                },
                title: "Continue",
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
