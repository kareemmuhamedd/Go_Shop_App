import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:upgrade/OrderHistory.dart';
import 'package:upgrade/profile.dart';
import 'package:upgrade/screens/screen_home.dart';
import 'package:upgrade/screens/screen_menu.dart';
import 'package:upgrade/OrderHistory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'Wish_List.dart';
import 'app_setting.dart';
import 'cart.dart';
import 'help.dart';
import 'home_screen.dart';
import 'intro_and_login/login_screen.dart';

class DrawerZoomBack extends StatefulWidget {
  const DrawerZoomBack({Key? key}) : super(key: key);


  @override
  State<DrawerZoomBack> createState() => _DrawerZoomBackState();
}

class _DrawerZoomBackState extends State<DrawerZoomBack> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        mainScreen: ScreenHome(),
        menuScreen: Builder(
          builder: (BuildContext context) => DrawerScreen(
            setIndex: (index) {
              ZoomDrawer.of(context)!.close();
              setState(() {
                currentIndex = index;
              });
            }, name: '',
          ),
        ),
        menuScreenOverlayColor: const Color.fromRGBO(67, 34, 103, 1),
        shadowLayer2Color: Colors.purple[700],
        shadowLayer1Color: Colors.purple[870],
        mainScreenScale: 0.3,
        borderRadius: 24,
        showShadow: true,
        angle: 0,
        drawerShadowsBackgroundColor: Colors.grey,
        menuBackgroundColor: const Color.fromRGBO(67, 34, 103, 1),
        slideWidth: MediaQuery.of(context).size.width * .75,
        openCurve: Curves.fastLinearToSlowEaseIn,
        closeCurve: Curves.bounceIn,
        menuScreenTapClose: true,
      ),
    );
  }

  Widget ScreenHome() {
    switch (currentIndex) {
      case 0:
        return  HomeScreen();
      case 1:
        return Wish_List();
      case 2:
        return const MyCart();
      case 3:
        return  OrderHistory();
      case 4:
        return const Profile();
      case 5:
        return const AppSetting();
      case 6:
        return const Help();
      default:
        return HomeScreen();
    }
  }
}

// menu icon page
class DrawerScreen extends StatefulWidget {

  final ValueSetter? setIndex;
  String? name;

  DrawerScreen({required this.name, this.setIndex});

  //const DrawerScreen({Key? key, required this.setIndex}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(67, 34, 103, 1),
        body: SafeArea(
          child: SizedBox(
            width: 500,
            child: Column(
              children: [
                const Icon(
                  Icons.account_circle,
                  size: 70,
                  color: Colors.deepOrange,
                ),
                const Text(
                  'kareem',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      wordSpacing: 2,
                      letterSpacing: 0.5),
                ),
                Text(
                  '${FirebaseAuth.instance.currentUser!.email}',
                  style: const TextStyle(
                    color: Colors.deepOrange,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                drawerList(Icons.home, "Home", 0),
                drawerList(Icons.favorite, "Wishlist", 1),
                drawerList(Icons.shopping_cart_outlined, "Cart", 2),
                drawerList(Icons.edit_calendar_sharp, "Order History", 3),
                drawerList(Icons.person, "Profile", 4),
                drawerList(Icons.settings_sharp, "App Setting", 5),
                drawerList(Icons.help, "Help & FAQs", 6),
                const SizedBox(
                  height: 100,
                ),
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
                        fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
 // build all  icons list
  Widget drawerList(IconData icon, String text, int index) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            widget.setIndex!(index);
          },
          leading: Icon(
            icon,
            color: Colors.deepOrange,
            size: 30,
          ),
          title: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
      ],
    );
  }
}
//////////// drawer widget

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ZoomDrawer.of(context)!.toggle();
      },
      icon: Image.asset('assets/menu.png'),
    );
  }
}
