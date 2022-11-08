import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_project_class/ui/page/bottomnavigation.dart';
import 'package:ui_project_class/ui/widget/costomtextfild.dart';
import 'package:ui_project_class/ui/widget/custombutton.dart';

class Stepper5 extends StatelessWidget {
  const Stepper5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              SizedBox(
                height: 12,
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
                    "images/stepper5.png",
                    height: 50,
                    width: 70,
                  ),
                ],
              ),
              Text(
                "Invite Your Team Member",
                style: GoogleFonts.nunito(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.01,

              ),
              CustomTextFild(
                label: "Email Member ",
                prefixicon: Icon(
                  Icons.key_sharp,
                  color: Colors.white,
                ),
                hinttxt: "Type an email address",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.01,

              ),
              Spacer(),
              CustomButton(
                title: "Continue",
                ontab: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BottomNavigation()));
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
