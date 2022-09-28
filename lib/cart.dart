import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:upgrade/Models/sendDataToWishList.dart';
import 'Details.dart';
import 'Models/PostModel.dart';
import 'card_order_history.dart';
import 'drawer.dart';
import 'home_screen.dart';
import 'main.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int product = 0;
  double supTotal = 0;
  double taxes = 0;
  bool liked = true;
  double _ratingValue = 0;
  int numberItems = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Cart',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        leading: const DrawerWidget(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('Drawer_Home_Screen');
              setState(() {
                ZoomDrawer.of(context)!.toggle();
              });
            },
            icon: Image.asset('assets/home.png'),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            FutureBuilder(
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                List<PostModel> posts = sendDataToCart.tempData;
                return SafeArea(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "May your wishes come true",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      StaggeredGrid.count(
                          mainAxisSpacing: 10.0,
                          crossAxisSpacing: 8.0,
                          crossAxisCount: 1,
                          children: [
                            ...List.generate(posts.length, (index) {
                              return InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) =>
                                            ProfileState(value: posts[index]!)));
                                  },
                                  child: SizedBox(
                                    height:
                                    MediaQuery.of(context).size.height * 0.22,
                                    width:
                                    MediaQuery.of(context).size.width * 0.4,
                                    child: Card(
                                      margin: const EdgeInsets.only(
                                          left: 5, right: 5, top: 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        //set border radius more than 50% of height and width to make circle
                                      ),
                                      elevation: 5,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                bottomLeft: Radius.circular(15)),
                                            //make border radius more than 50% of square height & width
                                            child: Image.network(
                                              posts[index].image!,
                                              fit: BoxFit
                                                  .cover, //change image fill type
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 20),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 135,
                                                    ),
                                                    Text(
                                                      '${DateTime.now().year}',
                                                      style: const TextStyle(
                                                          color: Colors.grey,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 4,
                                                ),
                                                Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 136,
                                                    ),
                                                    Text(
                                                      posts[index].title!,
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                          fontSize: 10),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Row(
                                                  children: const [
                                                    SizedBox(
                                                      width: 150,
                                                    ),
                                                    Text(
                                                      'American Trends',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 11),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 40,
                                                ),
                                                Row(
                                                  children: [
                                                    const SizedBox(
                                                      width: 150,
                                                    ),
                                                    Text(
                                                      '$_ratingValue',
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            top: 136,
                                            left: 324,
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                    Radius.circular(15),
                                                    topLeft: Radius.circular(15)),
                                                color: Color.fromRGBO(
                                                    67, 34, 103, 1),
                                              ),
                                              height: 30,
                                              width: 60,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: const Text(
                                                      '+',
                                                      style: TextStyle(
                                                          color:
                                                          Colors.deepOrange,
                                                          fontSize: 17),
                                                    ),
                                                  ),
                                                  Text(
                                                    '$numberItems',
                                                    style: const TextStyle(
                                                        color: Colors.deepOrange,
                                                        fontSize: 15),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: const Text(
                                                      '-',
                                                      style: TextStyle(
                                                          color:
                                                          Colors.deepOrange,
                                                          fontSize: 23),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ));
                            }),
                          ]),
                    ],
                  ),
                );
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(67, 34, 103, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  height: 50,
                  width: 400,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/checkout');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.fact_check_outlined,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          'Checkout',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
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
