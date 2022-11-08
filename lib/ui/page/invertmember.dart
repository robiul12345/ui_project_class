import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_project_class/ui/page/project.dart';
import 'package:ui_project_class/ui/widget/costomtextfild.dart';
import 'package:ui_project_class/ui/widget/custombutton.dart';

class InvertMember extends StatelessWidget {
  const InvertMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [Image.asset("images/xross.png")],
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.2,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),

              Text(
                "InvertMember",
                style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.01,),

              Text(
                "Make your team good with us. invite your team members. to get going",
                style: GoogleFonts.nunito(fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              SizedBox(height:MediaQuery.of(context).size.height*0.01,),

              CustomTextFild(
                label: "Team Members",
                hinttxt: "Select Your Team",
                prefixicon: Icon(Icons.person_add_alt_1, color: Colors.white,),
                suffixicon: Icon(
                  Icons.arrow_drop_down_outlined, color: Colors.white,),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.01,),

              Row(children: [
                Icon(Icons.add, size: 25, color: Colors.white,),
                SizedBox(height: 6,),
                Text("Add Member", style: GoogleFonts.nunito(fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white)),
              ],),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              CustomButton(
                ontab: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Project()));
                },
                title: "Invite",
              ),

            ],
          ),
        ),
      ),
    );
  }
}
