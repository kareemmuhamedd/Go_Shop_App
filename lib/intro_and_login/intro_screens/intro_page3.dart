import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  final PageController controller;

  const IntroPage3(this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(67, 34, 103, 1),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/Mobile Marketing-pana.png',
                height: 300,
                width: 300,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
          const SizedBox(
            height: 180,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Be sure to log in to be able to book\n'
                'newly added offers\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          Container(
            padding: const EdgeInsets.only(left: 60, right: 60),
            alignment: const Alignment(0, 0.7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                        '/Login'); // go to main->routes to understand what is '/Login'
                  },
                  child: const Text(
                    'Log in',
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
                    Navigator.of(context).pushNamed(
                        '/Register');
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 15,
                    ),
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
