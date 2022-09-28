import 'package:flutter/material.dart';
import 'Models/HttpService.dart';
import 'Models/PostModel.dart';
import 'drawer.dart';
import 'package:upgrade/Models/sendDataToWishList.dart';
class ProfileState extends StatelessWidget {
  final HttpService httpService = HttpService();
  List<PostModel> list=[];
  var value;
  ProfileState( {this.value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: FutureBuilder(
          future: httpService.getPosts(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            List<PostModel> posts = snapshot.data;
            if (snapshot.hasData) {
              return ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(children: [
                    const SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Stack(children: <Widget>[
                      Align(
                          alignment: Alignment.center,
                          child: Image.network(value.image)
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.deepPurple,
                            ),
                          )),
                      Align(
                          alignment: const Alignment(0.8, 0.8),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('Drawer_Home_Screen');
                            },
                            icon: const Icon(
                              Icons.home,
                              color: Colors.deepPurple,
                            ),
                          )),
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: MediaQuery.of(context).size.height * 0.4,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(value.title,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(value.description),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Center(
                                    child: FloatingActionButton.extended(
                                      label: Text(' ${value.price}  | Add To Cart'),
                                      // <-- Text
                                      backgroundColor: Colors.deepPurple,
                                      icon: const Icon(
                                        // <-- Icon
                                        Icons.shopping_bag,
                                        size: 24.0,
                                        color: Colors.orange,
                                      ),
                                      onPressed: () {
                                        list.add(value);
                                        sendDataToCart.tempData = list;
                                      },
                                    ),
                                  ),
                                ])))
                  ])
                ],
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),);
  }
}
