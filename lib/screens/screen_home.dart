// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'package:flutter_zoom_drawer/config.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
//
// import '../drawer.dart';
//
// class ScreenHome extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'Home',
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         leading: const DrawerWidget(),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Image.asset('assets/home.png'),
//           ),
//         ],
//       ),
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: ListView(
//           scrollDirection: Axis.vertical,
//           children: <Widget>[
//             Container(
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                       colors: [
//                         Color.fromARGB(255, 72, 28, 107),
//                         Colors.white,
//                       ],
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       stops: [0.5, 0.5])),
//               child: Container(
//                   height: 50,
//                   margin: const EdgeInsets.only(left: 10, right: 10),
//                   child: const TextField(
//                       decoration: InputDecoration(
//                     suffixIcon: Icon(Icons.filter_alt),
//                     prefixIcon: Icon(Icons.search),
//                     fillColor: Colors.white,
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.white),
//                       borderRadius: BorderRadius.all(Radius.circular(25.0)),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(25.0)),
//                       borderSide: BorderSide(color: Colors.white),
//                     ),
//                     hintText: "Type a Product Name",
//                     hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
//                     filled: true,
//                   ))),
//             ),
//             Container(
//               margin: const EdgeInsets.only(top: 10, bottom: 10),
//               height: 30,
//               width: double.infinity,
//               child: Stack(
//                 alignment: Alignment.center,
//                 children: const [
//                   Positioned(
//                     top: 5,
//                     left: 5,
//                     child: Text(
//                       'Category',
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//                     ),
//                   ),
//                   Positioned(
//                     top: 7,
//                     right: 5,
//                     child: Text(
//                       'see all (9)',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Color.fromARGB(255, 72, 28, 107),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.only(top: 5, bottom: 5),
//               height: 110,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   Card(
//                       elevation: 2,
//                       child: Stack(children: <Widget>[
//                         const Image(
//                             image: AssetImage('assets/fashionlist.jpg')),
//                         Center(
//                           child: Container(
//                             width: 155,
//                             decoration: BoxDecoration(
//                               color: Colors.black54,
//                               borderRadius: BorderRadius.circular(4.0),
//                             ),
//                             alignment: Alignment.center,
//                             // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
//                             child: const Text(
//                               'Fashion',
//                               style:
//                                   TextStyle(fontSize: 20, color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ])),
//                   Card(
//                       elevation: 2,
//                       child: Stack(children: <Widget>[
//                         const Image(
//                             image: AssetImage('assets/fashion9plus.jpg')),
//                         Center(
//                           child: Container(
//                             width: 155,
//                             decoration: BoxDecoration(
//                               color: Colors.black54,
//                               borderRadius: BorderRadius.circular(4.0),
//                             ),
//                             alignment: Alignment.center,
//                             // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
//                             child: const Text(
//                               'Accessories',
//                               style:
//                                   TextStyle(fontSize: 20, color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ])),
//                   Card(
//                       elevation: 2,
//                       child: Stack(children: <Widget>[
//                         const Image(
//                             image: AssetImage('assets/homeoffice2.jpg')),
//                         Center(
//                           child: Container(
//                             width: 155,
//                             decoration: BoxDecoration(
//                               color: Colors.black54,
//                               borderRadius: BorderRadius.circular(4.0),
//                             ),
//                             alignment: Alignment.center,
//                             // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
//                             child: const Text(
//                               'Fashion',
//                               style:
//                                   TextStyle(fontSize: 20, color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ])),
//                 ],
//               ),
//             ),
//             Container(
//                 margin: const EdgeInsets.only(top: 10, bottom: 10),
//                 height: 350,
//                 width: double.infinity,
//                 child: Carousel(
//                   images: const [
//                     AssetImage('assets/fashion5.jpg'),
//                     AssetImage('assets/fashion6.jpg'),
//                     AssetImage('assets/fashion7.jpg'),
//                     AssetImage('assets/fashion8.jpg'),
//                   ],
//                 )),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   margin: const EdgeInsets.only(top: 10, bottom: 10, left: 5),
//                   child: const Text(
//                     'Popular',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 5, bottom: 5),
//               height: 200,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   Card(
//                       elevation: 2,
//                       child: Stack(
//                         children: <Widget>[
//                           Container(
//                               decoration:
//                                   new BoxDecoration(color: Colors.white),
//                               alignment: Alignment.center,
//                               height: 240,
//                               child: const Image(
//                                   image: AssetImage('assets/fashion2.jpg'),
//                                   fit: BoxFit.fill)),
//                           const Align(
//                             alignment: Alignment.topRight,
//                             child: Icon(
//                               Icons.favorite,
//                               color: Colors.white,
//                             ),
//                           )
//                         ],
//                       )),
//                   Card(
//                       elevation: 2,
//                       child: Stack(
//                         children: <Widget>[
//                           Container(
//                               decoration:
//                                   new BoxDecoration(color: Colors.white),
//                               alignment: Alignment.center,
//                               height: 240,
//                               child: const Image(
//                                   image: AssetImage('assets/fashion3.jpg'),
//                                   fit: BoxFit.fill)),
//                           const Align(
//                             alignment: Alignment.topRight,
//                             child: Icon(
//                               Icons.favorite,
//                               color: Colors.white,
//                             ),
//                           )
//                         ],
//                       )),
//                   Card(
//                       elevation: 2,
//                       child: Stack(
//                         children: <Widget>[
//                           Container(
//                               decoration:
//                                   new BoxDecoration(color: Colors.white),
//                               alignment: Alignment.center,
//                               height: 240,
//                               child: const Image(
//                                   image: AssetImage('assets/fashion4.jpg'),
//                                   fit: BoxFit.fill)),
//                           const Align(
//                             alignment: Alignment.topRight,
//                             child: Icon(
//                               Icons.favorite,
//                               color: Colors.white,
//                             ),
//                           )
//                         ],
//                       )),
//                   Card(
//                       elevation: 2,
//                       child: Stack(
//                         children: <Widget>[
//                           Container(
//                               decoration:
//                                   new BoxDecoration(color: Colors.white),
//                               alignment: Alignment.center,
//                               height: 240,
//                               child: const Image(
//                                   image: AssetImage('assets/fashion5.jpg'),
//                                   fit: BoxFit.fill)),
//                           const Align(
//                             alignment: Alignment.topRight,
//                             child: Icon(
//                               Icons.favorite,
//                               color: Colors.white,
//                             ),
//                           )
//                         ],
//                       )),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
