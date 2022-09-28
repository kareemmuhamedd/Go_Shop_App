import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_zoom_drawer/config.dart';
import '../intro_and_login/login_screen.dart';

class ScreenMenu extends StatefulWidget {



  @override
  State<ScreenMenu> createState() => _ScreenMenuState();
}

class _ScreenMenuState extends State<ScreenMenu> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: SafeArea(
        child: Container(
          //color: Colors.blue,
          width: 500,
          child:
              Column(
                children:  [
                  const Icon(
                    Icons.account_circle,
                    size: 70,
                    color: Colors.deepOrange,
                  ),
                  const Text(
                      'Kareem Muhamed',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      wordSpacing: 2,
                      letterSpacing: 0.5

                    ),
                  ),
                   Text(
                    '${FirebaseAuth.instance.currentUser!.email}',
                    style: const TextStyle(
                      color: Colors.deepOrange,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ListTile(
                    onTap: (){

                    },
                    leading: const Icon(
                      Icons.home,
                      color: Colors.deepOrange,
                      size: 30,
                    ),
                    title: const Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: const Icon(
                      Icons.favorite,
                      color: Colors.deepOrange,
                      size: 30,
                    ),
                    title: const Text(
                      'Wishlist',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.deepOrange,
                      size: 30,
                    ),
                    title: const Text(
                      'Cart',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){
                    },
                    leading: const Icon(
                      Icons.edit_calendar_sharp,
                      color: Colors.deepOrange,
                      size: 30,

                    ),
                    title: const Text(
                      'Order History',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: const Icon(
                      Icons.person,
                      color: Colors.deepOrange,
                      size: 30,
                    ),
                    title: const Text(
                      'Profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: const Icon(
                      Icons.settings_sharp,
                      color: Colors.deepOrange,
                      size: 30,
                    ),
                    title: const Text(
                      'App Setting',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: const Icon(
                      Icons.help,
                      color: Colors.deepOrange,
                      size: 30,
                    ),
                    title: const Text(
                      'Help & FAQs',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                      ),
                    ),
                  ),
                  const SizedBox(height: 100,),
                  ListTile(
                    onTap: () async{
                      await FirebaseAuth.instance.signOut();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login_Screen()),
                      );
                    },
                    leading: const Icon(
                      Icons.logout_outlined,
                      color: Colors.deepOrange,
                      size: 30,
                    ),
                    title: const Text(
                      'Logout',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                      ),
                    ),
                  ),
                ],
              ),
        ),
      )
    );
  }
}
