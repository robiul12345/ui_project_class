import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_project_class/ui/page/invertmember.dart';
import 'package:ui_project_class/ui/page/teem_member.dart';
import 'package:ui_project_class/ui/widget/costomtextfild.dart';
import 'package:ui_project_class/ui/widget/custombutton.dart';

class AddProject extends StatelessWidget {
  const AddProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14), topRight: Radius.circular(14))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add New Project",
                    style: GoogleFonts.numans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Image.asset(
                    "images/xross.png",
                    height: 50,
                    width: 50,
                    color: Colors.white,
                  ),
                ],
              ),
              CustomTextFild(
                label: "Project Name",
                hinttxt: "Enter the Project Name",
                ontab: () {},
                prefixicon: Icon(
                  Icons.add_card_outlined,
                  color: Colors.white,
                ),
              ),
              CustomTextFild(
                label: "Assigned to",
                hinttxt: "Select Your Team",
                ontab: () {},
                suffixicon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
                prefixicon: Icon(
                  Icons.person_add_alt_1,
                  color: Colors.white,
                ),
              ),
              CustomTextFild(
                label: "Progress",
                hinttxt: "Ongoing",
                ontab: () {},
                suffixicon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
                prefixicon: Icon(
                  Icons.color_lens_outlined,
                  color: Colors.white,
                ),
              ),
              CustomTextFild(
                label: "Timeline",
                hinttxt: "2 March 20021",
                ontab: () {},
                prefixicon: Icon(
                  Icons.badge_outlined,
                  color: Colors.white,
                ),
              ),
              CustomButton(
                title: "Save",
                ontab: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TeemMember()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
