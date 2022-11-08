import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_project_class/ui/widget/costomtextfild.dart';
import 'package:ui_project_class/ui/widget/custombutton.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                    color: Color(0xffE4E4E6),
                  ),
                  Text(
                    "Sing Up",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color(0xffE4E4E6)),
                  )
                ],
              ),
              CustomTextFild(
                label: "Your Email Address ",
                prefixicon: Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                hinttxt: "Enter your email address",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.01,
              ),
              CustomTextFild(
                label: "Your Password ",
                prefixicon: Icon(
                  Icons.key_sharp,
                  color: Colors.white,
                ),
                hinttxt: "Enter your email address",

              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.01,
              ),
              CustomButton(
                ontab: (){},
                title: "Login",
              ),
              SizedBox(
                height:MediaQuery.of(context).size.height*0.01,
              ),
              Text(
                "Forget Your Password ",
                style: GoogleFonts.saira(fontSize: 16,color: Color(0xffF8F8F8
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
