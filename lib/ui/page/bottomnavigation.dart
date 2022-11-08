import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ui_project_class/ui/onboarding/onboarding1.dart';
import 'package:ui_project_class/ui/page/addproject.dart';
import 'package:ui_project_class/ui/page/date.dart';
import 'package:ui_project_class/ui/page/homepage.dart';
import 'package:ui_project_class/ui/page/profile.dart';
import 'package:ui_project_class/ui/page/project.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final page=[HomePage(),DateFlutter(),OnBording1(),Project(),Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.call_split, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;

              if(index==2){
                
                showModalBottomSheet(context: context, builder: (context)=>AddProject());

              }
            });
          },
          letIndexChange: (index) => true,
        ),
        body: page[_page],

    );
  }
}