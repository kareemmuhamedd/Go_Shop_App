import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  bool passwordVisible = true;

  void dispose() {
    _emailcontroller.dispose();

    _passwordcontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(67, 34, 103, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/Group -2.png",
                height: 230,
                width: 300,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.all(12),
              child: TextField(
                controller: _emailcontroller,
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
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              margin: const EdgeInsets.all(12),
              child: TextField(
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
                      passwordVisible ? Icons.visibility : Icons.visibility_off,
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forget password ?",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.orange,
                      ),
                    ),
                    onPressed: () async {
                        var result = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: _emailcontroller.text,
                                password: _passwordcontroller.text);
                        if(result != null){
                          print('welcom');
                          Navigator.of(context).pushReplacementNamed('/ZoomDrawer');
                        }
                    },
                  ),
                ),
                Expanded(
                  child: TextButton(
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/Register');
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
