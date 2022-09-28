
import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {

  final PageController controller;
  IntroPage1(this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(67,34,103,1),
      child: ListView(
        children:<Widget> [
          const SizedBox(height: 60,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),
              Image.asset(
                'assets/Catalogue-amico.png',
                height: 300,
                width: 300,
              ),
              const SizedBox(height: 30,),
            ],
          ),
          const SizedBox(height: 180,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('We strive to have a positive impact on\n'
                  'customers,employees, small businesses,the\n'
                  'economy,and communities.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 70,),
          Container(
            alignment: const Alignment(0, 0.7),
            child: Container(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.jumpToPage(2);
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const Text(
                    '|',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    // if true
                    onTap: () {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
