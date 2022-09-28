import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Edit Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Cancel',
              style: TextStyle(fontSize: 18, color: Colors.deepOrange),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 103, 12, 155),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 103, 12, 155),
                ),
                margin: const EdgeInsets.only(top: 20),
                child: const Icon(
                  Icons.account_circle,
                  size: 150,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.white,
                ),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Container(
                      height: 55,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(17),
                            bottomLeft: Radius.circular(17)),
                        color: Colors.deepOrange,
                      ),
                      child: const Icon(
                        Icons.account_circle,
                        color: Color.fromARGB(255, 103, 12, 155),
                        size: 30,
                      ),
                    ),
                    prefixText: '   ',
                    labelText: "  Kareem Muhamed",
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.white,
                ),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Container(
                      height: 55,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(17),
                            bottomLeft: Radius.circular(17)),
                        color: Colors.deepOrange,
                      ),
                      child: const Icon(
                        Icons.mail,
                        color: Color.fromARGB(255, 103, 12, 155),
                        size: 30,
                      ),
                    ),
                    prefixText: '   ',
                    labelText: "  kareemmuhamed@gmail.com",
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.white,
                ),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Container(
                      height: 55,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(17),
                            bottomLeft: Radius.circular(17)),
                        color: Colors.deepOrange,
                      ),
                      child: const Icon(
                        Icons.home,
                        color: Color.fromARGB(255, 103, 12, 155),
                        size: 30,
                      ),
                    ),
                    prefixText: '   ',
                    labelText: "  PortSaid City, Egypt",
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.white,
                ),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Container(
                      height: 55,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(17),
                            bottomLeft: Radius.circular(17)),
                        color: Colors.deepOrange,
                      ),
                      child: const Icon(
                        Icons.location_on,
                        color: Color.fromARGB(255, 103, 12, 155),
                        size: 30,
                      ),
                    ),
                    prefixText: '   ',
                    labelText: "  23 Saeed St. PortSaid . Egypt",
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.white,
                ),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Container(
                      height: 55,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(17),
                            bottomLeft: Radius.circular(17)),
                        color: Colors.deepOrange,
                      ),
                      child: const Icon(
                        Icons.call,
                        color: Color.fromARGB(255, 103, 12, 155),
                        size: 30,
                      ),
                    ),
                    prefixText: '   ',
                    labelText: "  +201223971464",
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              const SizedBox(height: 50,),
              Container(
                margin: const EdgeInsets.only(top: 40),
                height: 55,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(17),
                      topRight: Radius.circular(17)),
                  color: Colors.deepOrange,
                ),
                child: const TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    label: Center(
                      child: Text('Save'),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
