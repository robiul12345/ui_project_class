import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_project_class/ui/onboarding/onbord_pajeview.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Image.asset(
            "images/Group.png",
            width:  MediaQuery.of(context).size.height*0.2,
            height: MediaQuery.of(context).size.height*0.2,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height:  MediaQuery.of(context).size.height*0.02,
          ),
          Text(
            "RANCANG",
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 36),
          ),SizedBox(
                height:  MediaQuery.of(context).size.height*0.01,
              ),
          Text(
            "Your Personal Task Manager",
            style: GoogleFonts.nunito(
                fontSize: 17,
                color: Color(0xffE9E9EB),
                fontWeight: FontWeight.w400),
          )
            ],
          ),
          Spacer(),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageViewDimo()));
            },
            color: Colors.blue,
            minWidth: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Getting Started",
                  style: GoogleFonts.numans(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.05
          )
        ],
      ),
    );
  }
}
