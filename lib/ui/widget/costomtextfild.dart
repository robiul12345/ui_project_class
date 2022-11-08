import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFild extends StatelessWidget {
  String? label;
  Widget? prefixicon,suffixicon;
  String? hinttxt;
  VoidCallback? ontab;

  CustomTextFild({this.label, this.prefixicon,this.suffixicon, this.hinttxt, this.ontab});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "$label",
            style: GoogleFonts.saira(fontSize: 16, color: Color(0xff8A8A8E),fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.01,
          ),
          TextField(
            onTap: ontab,
            style: TextStyle(color: Colors.white),
            cursorRadius: Radius.circular(30),
            cursorColor: Color(0xff8A8A8E),
            decoration: InputDecoration(
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(0),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.blue)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Color(0xff8A8A8E))),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                suffixIcon: suffixicon,
                prefixIcon: prefixicon,
                prefixIconColor: Color(0xff8A8A8E).withOpacity(0.7),
                suffixIconColor: Color(0xff8A8A8E).withOpacity(0.7),
                hintText: "$hinttxt",
                hintStyle: TextStyle(color: Color(0xff8A8A8E))),
          ),
        ],
      ),
    );
  }
}
