import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'drawer.dart';

class HomeScreen extends StatelessWidget {
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        leading: const DrawerWidget(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/home.png'),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 72, 28, 107),
                        Colors.white,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.5, 0.5])),
              child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: const TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.filter_alt),
                        prefixIcon: Icon(Icons.search),
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        hintText: "Type a Product Name",
                        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                        filled: true,
                      ))),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              height: 30,
              width: double.infinity,
              child: Stack(
                alignment: Alignment.center,
                children: const [
                  Positioned(
                    top: 5,
                    left: 5,
                    child: Text(
                      'Category',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Positioned(
                    top: 7,
                    right: 5,
                    child: Text(
                      'see all (9)',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 72, 28, 107),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5, bottom: 5),
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                      elevation: 2,
                      child: Stack(children: <Widget>[
                        const Image(
                            image: AssetImage('assets/fashionlist.jpg')),
                        Center(
                          child: Container(
                            width: 155,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            alignment: Alignment.center,
                            // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                            child: const Text(
                              'Fashion',
                              style:
                              TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ])),
                  Card(
                      elevation: 2,
                      child: Stack(children: <Widget>[
                        const Image(
                            image: AssetImage('assets/fashion9plus.jpg')),
                        Center(
                          child: Container(
                            width: 155,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            alignment: Alignment.center,
                            // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                            child: const Text(
                              'Accessories',
                              style:
                              TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ])),
                  Card(
                      elevation: 2,
                      child: Stack(children: <Widget>[
                        const Image(
                            image: AssetImage('assets/homeoffice2.jpg')),
                        Center(
                          child: Container(
                            width: 155,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            alignment: Alignment.center,
                            // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                            child: const Text(
                              'Fashion',
                              style:
                              TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ])),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage( 'assets/slide1.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage( 'assets/slide5.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.all(6.0),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8.0),
                //     image: const DecorationImage(
                //       image: AssetImage( 'assets/slide2.jpg'),
                //       fit: BoxFit.fill,
                //     ),
                //   ),
                // ),
                // Container(
                //   margin: const EdgeInsets.all(6.0),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8.0),
                //     image: const DecorationImage(
                //       image: AssetImage( 'assets/slide3.jpg'),
                //       fit: BoxFit.fill,
                //     ),
                //   ),
                // ),
                // Container(
                //   margin: const EdgeInsets.all(6.0),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8.0),
                //     image: const DecorationImage(
                //       image: AssetImage( 'assets/slide4.jpg'),
                //       fit: BoxFit.fill,
                //     ),
                //   ),
                // ),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10, left: 5),
                  child: const Text(
                    'Popular',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            StaggeredGrid.count(
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              crossAxisCount: 2,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/p1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/p2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/p3.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/p8.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/p9.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/p10.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/p11.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/p12.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/p13.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/p14.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/p15.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/p16.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/p17.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
