import 'package:flutter/material.dart';
import 'package:ui_project_class/ui/onboarding/onboarding1.dart';
import 'package:ui_project_class/ui/onboarding/onboarding2.dart';
import 'package:ui_project_class/ui/onboarding/onboarding3.dart';

class PageViewDimo extends StatefulWidget {
  const PageViewDimo({Key? key}) : super(key: key);

  @override
  State<PageViewDimo> createState() => _PageViewDimoState();
}

class _PageViewDimoState extends State<PageViewDimo> {

  PageController _controller=PageController(
    initialPage: 0,
  );
  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          OnBording1(),
          OnBoarding2(),
          OnBoarding3(),
        ],
      ),
    );
  }
}
