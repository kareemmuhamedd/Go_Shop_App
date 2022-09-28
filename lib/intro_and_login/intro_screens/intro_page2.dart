
import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  final PageController controller;
  const IntroPage2(this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(67,34,103,1),
      child: Column(
        children:<Widget> [
          const SizedBox(height: 60,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),
              Image.asset(
                'assets/Free shipping-pana.png',
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
              Text('We promote the fact that we offer\n'
                  'free shipping for all orders\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
          const SizedBox(height: 70,),
          Container(
            padding: const EdgeInsets.only(left: 50, right: 50),
            alignment: const Alignment(0, 0.7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: const Text(
                    'Back',
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
                        duration:
                        const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
