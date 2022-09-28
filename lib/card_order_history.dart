import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:upgrade/Models/sendDataToWishList.dart';

import 'Models/PostModel.dart';

class CardForOrders extends StatefulWidget {
  const CardForOrders({Key? key}) : super(key: key);

  @override
  State<CardForOrders> createState() => _CardForOrdersState();
}

class _CardForOrdersState extends State<CardForOrders> {
  double _ratingValue = 0;
  int numberItems = 1;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        List<PostModel> posts = sendDataToWishList.tempData;
        return SafeArea(
          child: Card(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
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
                  child: Image.asset(
                    "assets/p1.jpg",
                    height: 120.0,
                    width: 150.0,
                    fit: BoxFit.cover, //change image fill type
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 160,
                          ),
                          Text(
                            '#1365987    10 Aug 2020',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 160,
                          ),
                          Text(
                            '''Women's Fall Winter Scarf''',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 160,
                          ),
                          Text(
                            'American Trends',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 160,
                          ),
                          Text(
                            '$_ratingValue',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 293,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(15)),
                      color: Color.fromRGBO(67, 34, 103, 1),
                    ),
                    height: 30,
                    width: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            '+',
                            style: TextStyle(
                                color: Colors.deepOrange, fontSize: 17),
                          ),
                        ),
                        Text(
                          '$numberItems',
                          style: const TextStyle(
                              color: Colors.deepOrange, fontSize: 15),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            '-',
                            style: TextStyle(
                                color: Colors.deepOrange, fontSize: 23),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
