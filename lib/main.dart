import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:upgrade/splashScreen.dart';
import 'package:flutter/material.dart';
import 'Wish_List.dart';
import 'cart.dart';
import 'checkout_screens/checkout_screen.dart';
import 'checkout_screens/checkout_screen2.dart';
import 'checkout_screens/edit_card.dart';
import 'detailes.dart';
import 'drawer.dart';
import 'edit_profile.dart';
import 'home_screen.dart';
import 'intro_and_login/intro.dart';
import 'intro_and_login/login_screen.dart';
import 'intro_and_login/register_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.deepOrange,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              color: Color.fromRGBO(67,34,103,1)
          )
      ),
      home:  AnimatedSplashScreen(
        splash: SplashScreen(),
        nextScreen: const IntroScreen(),
        splashIconSize: 700,
        backgroundColor: const Color.fromRGBO(67,34,103,1),
        animationDuration: const Duration(milliseconds: 2000),
        splashTransition: SplashTransition.slideTransition,
      ),
      routes: {
        '/Home':(context)=> HomeScreen(),
        '/profile':(context)=>const MyCart(),
        '/edit profile':(context)=>const LoginPage(),
        '/Login': (context) => const Login_Screen(),
        '/Register': (context) => const RegisterScreen(),
        '/checkout':(context)=>const Checkout(),
        '/checkout2':(context)=>const Checkout2(),
        '/edit cards':(context)=>const Edit_Cards(),
        '/details':(context)=>const Details(),
        '/ZoomDrawer':(context)=> DrawerZoomBack(),
        'Drawer_Home_Screen':(context)=> DrawerZoomBack(),
      },
    );
  }
}

