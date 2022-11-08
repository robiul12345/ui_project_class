import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_project_class/ui/page/login.dart';
import 'package:ui_project_class/ui/onboarding/onboarding1.dart';
import 'package:ui_project_class/ui/stepper/stepper1.dart';
import 'package:ui_project_class/ui/widget/costomtextfild.dart';
import 'package:ui_project_class/ui/widget/custombutton.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(6),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "images/xross.png",
                    height: 50,
                    width: 50,
                    color: Colors.white,
                  ),
                  Text(
                    "Sing Up",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.01,
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
                height: MediaQuery.of(context).size.height*0.01,
              ),
              CustomButton(
                title: "Continue",
                ontab: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Stepper1()));
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
