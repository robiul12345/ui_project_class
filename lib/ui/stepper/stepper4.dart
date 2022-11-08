import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_project_class/ui/stepper/stepper5.dart';
import 'package:ui_project_class/ui/widget/costomtextfild.dart';
import 'package:ui_project_class/ui/widget/custombutton.dart';

class Stepper4 extends StatelessWidget {
  const Stepper4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.01,

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
                    "images/stepper4.png",
                    height: 50,
                    width: 70,
                  ),
                ],
              ),
              Text(
                "Enter Your Code Team?",
                style: GoogleFonts.nunito(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,

              ),
              CustomTextFild(
                label: "Code Team ",
                prefixicon: Icon(
                  Icons.key_sharp,
                  color: Colors.white,
                ),
                hinttxt: "e.g JXHJKH",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,

              ),
              Spacer(),
              CustomButton(
                title: "Continue",
                ontab: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Stepper5()));
                },
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
