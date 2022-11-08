import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_project_class/ui/model/my_list.dart';

class HomePage extends StatelessWidget {
  var id = Model;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          maxRadius: 30,
                          backgroundColor: Colors.white.withOpacity(0.4),
                          child: Icon(
                            Icons.account_circle,
                            color: Color(0xffE4E4E6),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Parto Team",
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffE4E4E6)),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xffE4E4E6),
                        )
                      ],
                    ),
                    Icon(
                      Icons.search_rounded,
                      color: Color(0xffE4E4E6),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Parto Team",
                  style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffE4E4E6)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 70,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            decoration: BoxDecoration(color: Color(0xff292B3E)),
                            height: 70,
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 5,
                                  color: myList[index].color,
                                  margin: EdgeInsets.symmetric(vertical: 6),
                                ),
                                Expanded(
                                    child: Row(
                                  children: [
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "${myList[index].id}",
                                      style: GoogleFonts.nunito(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "${myList[index].title}",
                                      style: GoogleFonts.nunito(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ),
                      separatorBuilder: (_, index) => SizedBox(
                            width: 10,
                          ),
                      itemCount: myList.length),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Project Task",
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white70),
                    ),
                    Text(
                      "See More",
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white70),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: myList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(16),
                        margin:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        height: 130,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white70),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.check_box_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                            Expanded(
                              flex: 10,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "${myList[index].title}",
                                        style: GoogleFonts.nunito(
                                            fontSize: 16, color: Colors.white),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 8),
                                        decoration: BoxDecoration(
                                          color: myList[index]
                                              .color
                                              .withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Text(
                                          "${myList[index].taskName}",
                                          style: GoogleFonts.numans(
                                            fontSize: 16,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 5,
                                              decoration: BoxDecoration(
                                                color: myList[index]
                                                    .color
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                            ),
                                            LayoutBuilder(builder:
                                                (context, constraints) {
                                              return Container(
                                                height: 5,
                                                width: constraints.maxWidth *
                                                    myList[index].percentage /
                                                    100,
                                                decoration: BoxDecoration(
                                                  color: myList[index].color,
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                              );
                                            })
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "5/10",
                                        style: GoogleFonts.nunito(
                                            fontSize: 16, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        maxRadius: 8,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "5/10",
                                        style: GoogleFonts.nunito(
                                            fontSize: 16, color: Colors.white),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
