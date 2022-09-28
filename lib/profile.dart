import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'drawer.dart';
import 'home_screen.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        leading: const DrawerWidget(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('Drawer_Home_Screen');
            },
            icon: Image.asset('assets/home.png'),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  color: const Color.fromARGB(255, 72, 28, 107),
                  child: Column(children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const CircleAvatar(
                      backgroundColor: Color(0xff00a3ff),
                      backgroundImage: AssetImage("assets/userPage.jpg"),
                      radius: 60.0,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      "kareem",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${FirebaseAuth.instance.currentUser!.email}',
                      style: const TextStyle(
                        color: Colors.deepOrange,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/edit profile');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 72, 28, 107),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        padding: const EdgeInsets.all(20)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: const [
                          Icon(Icons.edit_outlined,
                              color: Color.fromARGB(255, 246, 139, 0)),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Edit Profile",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/profile');
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 72, 28, 107),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        padding: const EdgeInsets.all(20)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: const [
                          Icon(Icons.shopping_bag,
                              color: Color.fromARGB(255, 246, 139, 0)),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Cart",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 72, 28, 107),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        padding: const EdgeInsets.all(20)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: const [
                          Icon(Icons.favorite,
                              color: Color.fromARGB(255, 246, 139, 0)),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "WishList",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 72, 28, 107),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        padding: const EdgeInsets.all(20)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: const [
                          Icon(Icons.checklist,
                              color: Color.fromARGB(255, 246, 139, 0)),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Order History",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 72, 28, 107),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        padding: const EdgeInsets.all(20)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: const [
                          Icon(
                            Icons.credit_card,
                            color: Color.fromARGB(255, 246, 139, 0),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Cards",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
