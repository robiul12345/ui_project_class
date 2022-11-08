import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  String? title;
  VoidCallback? ontab;
  bool? isblue;

  CustomButton({this.title, this.ontab, this.isblue});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: ontab,
      minWidth: double.infinity,
      color: isblue == null ? Colors.blue : Colors.transparent,
      padding: EdgeInsets.symmetric(vertical: 17),
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color: isblue == null ? Colors.transparent : Colors.white),
          borderRadius: BorderRadius.circular(36)),
      child: Text(
        "$title",
        style: GoogleFonts.nunito(
            fontSize: 17, fontWeight: FontWeight.w700, color: Colors.white),
      ),
    );
  }
}
