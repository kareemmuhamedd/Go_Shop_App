import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:upgrade/Models/sendDataToWishList.dart';
import 'Details.dart';
import 'Models/HttpService.dart';
import 'Models/PostModel.dart';
import 'drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}



class _HomeScreen extends State<HomeScreen> {

  final HttpService httpService = HttpService();
  CarouselController carouselController = CarouselController();
  List<PostModel> list=[];
  bool liked = true;
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
      body: FutureBuilder(
        future: httpService.getPosts(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          List<PostModel> posts = snapshot.data;
          if (snapshot.hasData) {
            return ListView(
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
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
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
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
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
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
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
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
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
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('assets/p1.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('assets/p2.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('assets/p3.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    //4th Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('assets/p4.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),

                    //5th Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('assets/p5.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayInterval: Duration(seconds: 4),
                    autoPlayAnimationDuration: Duration(seconds: 1),
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
                      margin:
                      const EdgeInsets.only(top: 10, bottom: 10, left: 5),
                      child: const Text(
                        'Popular',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                StaggeredGrid.count(
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 8.0,
                    crossAxisCount: 2,
                    children: [
                      ...List.generate(posts.length, (index) {
                        return InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileState(value: snapshot.data[index]!)));
                            },
                            child:SizedBox(
                              height: MediaQuery.of(context).size.height * 0.22,
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Stack(
                                children: [
                                  Card(
                                    elevation: 3.0,
                                    shadowColor: Colors.deepPurple,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Image(
                                      image:
                                      NetworkImage(posts[index].image!),
                                      width:
                                      MediaQuery.of(context).size.width * 0.5,
                                      height:
                                      MediaQuery.of(context).size.height * 0.18,
                                    ),
                                  ),
                                  Positioned(
                                    top: MediaQuery.of(context).size.height * 0.008,
                                    right: MediaQuery.of(context).size.width * 0.02,
                                    child: CircleAvatar(
                                      backgroundColor:
                                      Colors.white.withOpacity(0.6),
                                      child: IconButton(
                                        splashRadius: 10,
                                        onPressed: () {
                                          setState(() {
                                            liked = !liked;
                                          });
                                            list.add(posts[index]);
                                            sendDataToWishList.tempData = list;

                                        },
                                        padding: EdgeInsets.all(0),
                                        iconSize: 20,
                                        icon:  Icon(
                                            Icons.favorite , color:  Colors.red
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: MediaQuery.of(context).size.height * 0.008,
                                    left: MediaQuery.of(context).size.width * 0.03,
                                    child: Container(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.white70.withOpacity(0.8),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                      ),
                                      child: Text(
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
                                    left: MediaQuery.of(context).size.width * 0.035,
                                    bottom:
                                    MediaQuery.of(context).size.height * 0.001,
                                    child: Card(
                                      elevation: 3.0,
                                      clipBehavior: Clip.antiAlias,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Container(
                                        height: MediaQuery.of(context).size.height *
                                            0.06,
                                        width:
                                        MediaQuery.of(context).size.width * 0.4,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                          color: Colors.white,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Flexible(
                                              child: Text(
                                                posts[index].title!,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
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
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.shopping_bag_outlined,
                                                      size: 18,
                                                      color: Colors.white,
                                                    ),
                                                    Text(
                                                      posts[index].price.toString(),
                                                      style: TextStyle(
                                                        fontSize: 10.5,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      '6000 L.E',
                                                      style: TextStyle(
                                                        fontSize: 8.0,
                                                        color: Colors.grey,
                                                        fontWeight: FontWeight.bold,
                                                        decoration: TextDecoration
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
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
