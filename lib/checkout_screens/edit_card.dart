import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../drawer.dart';
import '../main.dart';
class Edit_Cards extends StatefulWidget {
  const Edit_Cards({Key? key}) : super(key: key);

  @override
  State<Edit_Cards> createState() => _Edit_CardsState();
}

class _Edit_CardsState extends State<Edit_Cards> {
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Edit cards',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('Drawer_Home_Screen');
              },
              icon: Image.asset('assets/home.png'),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              CarouselSlider(
                items: [
                  //1st Image of Slider
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: AssetImage( 'assets/c1.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: AssetImage( 'assets/c2.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayInterval: const Duration(seconds: 4),
                  autoPlayAnimationDuration: const Duration(seconds: 1),
                  enableInfiniteScroll: true,
                  height: 200,
                  initialPage: 0,
                  reverse: false,
                  scrollDirection: Axis.horizontal,
                  viewportFraction: 0.9,
                ),
                carouselController: carouselController,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 20,
                        child: Row(),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (String value) {},
                        decoration: const InputDecoration(
                          labelText: 'Name on card',
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (String value) {},
                        decoration: const InputDecoration(
                          labelText: 'Card number',
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.datetime,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (String value) {},
                        decoration: const InputDecoration(
                          labelText: 'Expiry Date',
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (String value) {},
                        decoration: const InputDecoration(
                          labelText: 'CVV',
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Radio(value: 1, groupValue: 1, onChanged: (value) {}),
                          const Text("Save this card details"),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: 500,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                                child: MaterialButton(
                                  color: Colors.white,
                                  height: 40,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(color: Colors.orange)),
                                  child: const Text(
                                    'Back',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                                child: MaterialButton(
                                    color: Colors.orange,
                                    height: 40,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        side: const BorderSide(color: Colors.white)),
                                    child: const Text(
                                      'Next',
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.white),
                                    ),
                                    onPressed: () {}),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]
            ),
          ),
        )
    );
  }
}
