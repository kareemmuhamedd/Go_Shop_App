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

class Wish_List extends StatefulWidget {
  @override
  State<Wish_List> createState() => _Wish_ListState();
}

class _Wish_ListState extends State<Wish_List> {
  bool liked = true;
  double _ratingValue = 0;
  int numberItems = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Wishlist',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          leading: const DrawerWidget(),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed('Drawer_Home_Screen');
              },
              icon: Image.asset('assets/home.png'),
            ),
          ],
          bottom: const TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.deepOrange,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.list,
                ),
                text: 'List',
              ),
              Tab(
                icon: Icon(
                  Icons.grid_view,
                ),
                text: 'Grid',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          FutureBuilder(
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              List<PostModel> posts = sendDataToWishList.tempData;
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
          FutureBuilder(
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              List<PostModel> posts = sendDataToWishList.tempData;
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
                        crossAxisCount: 2,
                        children: [
                          ...List.generate(posts.length, (index) {
                            return InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => ProfileState(
                                          value: snapshot.data[index]!)));
                                },
                                child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.22,
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Stack(
                                    children: [
                                      Card(
                                          elevation: 3.0,
                                          shadowColor: Colors.deepPurple,
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.22,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.4,
                                            child: Image(
                                              image: NetworkImage(
                                                  posts[index].image!),
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.18,
                                            ),
                                          )),
                                      Positioned(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.008,
                                        right:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                        child: CircleAvatar(
                                          backgroundColor:
                                              Colors.white.withOpacity(0.6),
                                          child: IconButton(
                                            splashRadius: 10,
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ProfileState(
                                                              value: snapshot
                                                                      .data[
                                                                  index]!)));
                                            },
                                            padding: const EdgeInsets.all(0),
                                            iconSize: 20,
                                            icon: const Icon(Icons.favorite,
                                                color: Colors.red),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                0.008,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white70.withOpacity(0.8),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(15)),
                                          ),
                                          child: const Text(
                                            '50% OFF',
                                            style: TextStyle(
                                              color: Colors.lightBlue,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Positioned(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.035,
                                        bottom:
                                            MediaQuery.of(context).size.height *
                                                0.001,
                                        child: Card(
                                          elevation: 3.0,
                                          clipBehavior: Clip.antiAlias,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.06,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.4,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              color: Colors.white,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Flexible(
                                                  child: Text(
                                                    posts[index].title!,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 2,
                                                    textAlign: TextAlign.center,
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.15,
                                                  color: Colors.deepPurple,
                                                  child: InkWell(
                                                    onTap: () {},
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Icon(
                                                          Icons
                                                              .shopping_bag_outlined,
                                                          size: 18,
                                                          color: Colors.white,
                                                        ),
                                                        Text(
                                                          posts[index]
                                                              .price
                                                              .toString(),
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 10.5,
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        const Text(
                                                          '6000 L.E',
                                                          style: TextStyle(
                                                            fontSize: 8.0,
                                                            color: Colors.grey,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ));
                          }),
                        ]),
                  ],
                ),
              );
            },
          ),
        ]),
      ),
    );
  }
}
