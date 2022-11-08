import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_project_class/ui/stepper/stepper2.dart';
import 'package:ui_project_class/ui/widget/costomtextfild.dart';
import 'package:ui_project_class/ui/widget/custombutton.dart';

class Stepper1 extends StatelessWidget {
  const Stepper1({Key? key}) : super(key: key);

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
                    width: MediaQuery.of(context).size.width*0.2,
                  ),
                  Image.asset(
                    "images/stepper1.png",
                    height: 50,
                    width: 60,
                  ),
                ],
              ),
              Text(
                "Complete Your Profile",
                style: GoogleFonts.nunito(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.5),
                maxRadius: 45,
                minRadius: 35,
                child: Icon(Icons.camera_alt_outlined),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              CustomTextFild(
                label: "Your Email Address ",
                prefixicon: Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                hinttxt: "Enternyour email address",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.00,
              ),
              CustomTextFild(
                label: "Your Passsword ",
                prefixicon: Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                hinttxt: "Enter your password",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              CustomButton(
                title: "Continue",
                ontab: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Stepper2()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
