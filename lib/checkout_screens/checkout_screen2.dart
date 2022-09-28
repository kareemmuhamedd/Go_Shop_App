import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../main.dart';

class Checkout2 extends StatefulWidget {
  const Checkout2({Key? key}) : super(key: key);

  @override
  State<Checkout2> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout2> {
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
              height: 90,
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
                      child: const Icon(
                        Icons.paypal,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MaterialButton(
                      color: Colors.white,
                      height: 40,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(color: Colors.orange)),
                      child: const Icon(
                        Icons.payment,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MaterialButton(
                      color: Colors.white,
                      height: 40,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(color: Colors.orange)),
                      child: const Icon(
                        Icons.wallet,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            TextFormField(
                style: const TextStyle(color: Colors.black, fontSize: 16),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: ("Name on Card"),
                )),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
                style: const TextStyle(color: Colors.black, fontSize: 16),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: (" Card Number"),
                )),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    subtitle: TextFormField(
                      decoration:
                          const InputDecoration(labelText: "Expiry Date"),
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
                        labelText: 'CVV ',
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
              height: 10,
            ),
            CheckboxListTile(
                title: const Text(
                  "Save this card details",
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
              height: 60,
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
                        Navigator.of(context).pushNamed('/edit cards');
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
