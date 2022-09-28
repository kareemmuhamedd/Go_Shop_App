import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  final _name = TextEditingController();
  final _phone = TextEditingController();
  var getName;

  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(67, 34, 103, 1),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                      ),
                      Image.asset(
                        'assets/Group -2.png',
                        height: MediaQuery.of(context).size.height * 0.07,
                      ),
                      const Text('O Shop',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                  Text(
                    'Create a Go Shop account',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.amber[700],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  TextField(
                    controller: _name,
                    style: const TextStyle(
                      color: Color.fromRGBO(233, 144, 0, 1),
                    ),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.account_box,
                        color: Color.fromRGBO(233, 144, 0, 1),
                      ),
                      labelText: "Name",
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      hintText: "Kareem Muhamed",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  TextField(
                    controller: _phone,
                    style: const TextStyle(
                      color: Color.fromRGBO(233, 144, 0, 1),
                    ),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.sim_card_alert_outlined,
                        color: Color.fromRGBO(233, 144, 0, 1),
                      ),
                      prefixText: '+20 ',
                      prefixStyle: TextStyle(color: Colors.white),
                      labelText: "Phone",
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  TextFormField(
                    controller: _emailcontroller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Fill Email Input';
                      }
                    },
                    style: const TextStyle(
                      color: Color.fromRGBO(233, 144, 0, 1),
                    ),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.alternate_email,
                        color: Color.fromRGBO(233, 144, 0, 1),
                      ),
                      labelText: "Enter E-mail",
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      hintText: "@gmail.com",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  TextField(
                    controller: _passwordcontroller,
                    style: const TextStyle(
                      color: Color.fromRGBO(233, 144, 0, 1),
                    ),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Color.fromRGBO(233, 144, 0, 1),
                      ),
                      suffixIcon: IconButton(
                        color: const Color.fromRGBO(233, 144, 0, 1),
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                      labelText: "Enter password",
                      labelStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      hintText: "like : Aa##1432**112",
                      hintStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: passwordVisible,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  TextField(
                    style: const TextStyle(
                      color: Color.fromRGBO(233, 144, 0, 1),
                    ),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Color.fromRGBO(233, 144, 0, 1),
                      ),
                      suffixIcon: IconButton(
                        color: const Color.fromRGBO(233, 144, 0, 1),
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                      labelText: "Confirm password",
                      labelStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      hintText: "like : Aa##1432**112",
                      hintStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: passwordVisible,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    onPressed: () async {
                      var result = await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: _emailcontroller.text,
                              password: _passwordcontroller.text);

                      final user = User(
                        name: _name.text,
                        phone: _phone.text,
                      );
                      createUser(user);
                      print('welcome');
                      Navigator.of(context).pushNamed('/Login');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  // function future to add data users in firebase cloud !!!!!
  Future createUser(User user) async {
    final docUser = FirebaseFirestore.instance.collection('users').doc();
    user.id = FirebaseAuth.instance.currentUser!.uid;
    getName = user.name;
    final json = user.toJson();
    //Create document and write data to Firebase
    await docUser.set(json);
  }
}
class User {

  String? id;
  late final String name;
  late final String phone;

  User({
    this.id,
    required this.name,
    required this.phone,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'phone': phone,
      };
}
