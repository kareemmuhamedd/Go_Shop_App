import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class AppSetting extends StatefulWidget {
  const AppSetting({Key? key}) : super(key: key);

  @override
  State<AppSetting> createState() => _AppSettingState();
}

class _AppSettingState extends State<AppSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Setting',
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
      body: Container(
        color: Colors.teal,
      ),
    );
  }
}
