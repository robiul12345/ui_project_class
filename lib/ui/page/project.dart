import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/my_list.dart';

class Project extends StatelessWidget {
   Project({Key? key}) : super(key: key);
  var id = Model;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
     child: Scaffold(
       body: SingleChildScrollView(
         child: Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
               Image.asset("images/back.png",height: 50,width: 50,),
               Text("Project",style: TextStyle(fontSize: 22,color: Colors.white),),
               Image.asset("images/dot.png",height: 50,width: 50,),
             ],),
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
    );
  }
}
