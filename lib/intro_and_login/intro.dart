import 'package:flutter/material.dart';
import 'package:upgrade/intro_and_login/intro_screens/intro_page1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'intro_screens/intro_page1.dart';
import 'intro_screens/intro_page2.dart';
import 'intro_screens/intro_page3.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  // for slide my screen controller
  final PageController controller = PageController();

  // to change next to done if i in the last page
  bool onLastPage = false;
  bool onSecondPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            // onPageChanged: (index) {
            //   // in all time i will move the screen i will increment
            //   // i will received number if number == 3 so that mean location in last page
            //   // so i use setState to change onLastPage to true if index == 3
            //   setState(() {
            //     onLastPage = (index == 2);
            //     onSecondPage = (index == 1);
            //   });
            // },
            controller: controller,
            children:  [
              IntroPage1(controller),
              IntroPage2(controller),
              IntroPage3(controller),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            alignment: const Alignment(0, 0.93),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    dotColor: Colors.white,
                    activeDotColor: Colors.deepOrange,
                    dotHeight: 6,
                    dotWidth: 10,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
