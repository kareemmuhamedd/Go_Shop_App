import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../main.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Checkout',
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('Drawer_Home_Screen');
              },
              icon: Image.asset('assets/home.png'),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            CheckboxListTile(
                title: const Text(
                  "Billing address is the same as delivery address",
                  style: TextStyle(fontSize: 15),
                ),
                checkColor: Colors.yellow,
                value: value,
                onChanged: (bool? value) {
                  setState(() {
                    this.value = value!;
                  });
                }),
            const SizedBox(
              height: 50,
            ),
            TextFormField(
                style: const TextStyle(color: Colors.black, fontSize: 16),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: ("Street 1"),
                )),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
                style: const TextStyle(color: Colors.black, fontSize: 16),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: ("Street 2"),
                )),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
                style: const TextStyle(color: Colors.black, fontSize: 16),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: ("City "),
                )),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    subtitle: TextFormField(
                      decoration: const InputDecoration(
                        labelText: '  State',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: ListTile(
                    subtitle: TextFormField(
                      decoration: const InputDecoration(
                        labelText: '  Country',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MaterialButton(
                      color: Colors.white,
                      height: 40,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(color: Colors.orange)),
                      child: const Text(
                        "Back",
                        style: TextStyle(fontSize: 25, color: Colors.orange),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MaterialButton(
                      color: Colors.orange,
                      height: 40,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(color: Colors.white)),
                      child: const Text(
                        "Next",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/checkout2');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
