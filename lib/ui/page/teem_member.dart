import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_project_class/ui/page/invertmember.dart';

class TeemMember extends StatelessWidget {
  const TeemMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context)=>InvertMember());
        },
        child: Icon(Icons.add),
      ),
      body: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*0.01,

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "images/back.png",
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.2,

            ),
            Text(
              "Parto Team",
              style: GoogleFonts.nunito(fontSize: 22, color: Colors.white60),
            ),
            SizedBox(height:  MediaQuery.of(context).size.height*0.02,),
          ],
        ),
        Expanded(
          child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
              children: List.generate(14, (index) {
                return Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white.withOpacity(0.5),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 10,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Colors.cyanAccent.withOpacity(0.5)),
                                    height: 60,
                                    width: 60,
                                  ),
                                  Positioned(
                                      right: 5,
                                      bottom: 0,
                                      child: Container(
                                        width: 15,
                                        height: 15,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.yellow),
                                      ))
                                ],
                              ),
                              SizedBox(
                                height:  MediaQuery.of(context).size.height*0.01,
                              ),
                              Text(
                                "Shoo Phar Nho",
                                style: GoogleFonts.nunito(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height*0.01,
                              ),
                              Text("pharno@email.com",style: TextStyle(fontSize: 16),),
                            ],
                          )),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height*0.01,
                              child: Image.asset(
                                "images/dot.png",
                                height: 10,
                                width: 10,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                );
              })),
        ),
      ]),
    ));
  }
}
