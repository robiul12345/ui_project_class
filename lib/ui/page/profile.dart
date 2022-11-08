import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Profile",
                      style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Sign Out",
                      style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.cyan, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Shoo Phar Nha",
                          style: GoogleFonts.nunito(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text(
                          "xDesign Team",
                          style: GoogleFonts.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                  width: double.infinity,
                  child: Card(
                    color: Colors.black.withOpacity(0.5),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text(
                              "Account",
                              style: GoogleFonts.nunito(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "My Information",
                              style: GoogleFonts.nunito(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios_rounded,
                                color: Colors.white),
                          ),
                          ListTile(
                            title: Text(
                              "Chang Password",
                              style: GoogleFonts.nunito(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios_rounded,
                                color: Colors.white),
                          ),
                          ListTile(
                            title: Text(
                              "My Team",
                              style: GoogleFonts.nunito(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios_rounded,
                                color: Colors.white),
                          ),
                          ListTile(
                            title: Text(
                              "Notification",
                              style: GoogleFonts.nunito(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                            child: Container(
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                          Card(
                            elevation: 10,
                            color: Colors.black.withOpacity(0.5),
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    "Help",
                                    style: GoogleFonts.nunito(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "Licenses",
                                    style: GoogleFonts.nunito(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    "Privacy Policy",
                                    style: GoogleFonts.nunito(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
