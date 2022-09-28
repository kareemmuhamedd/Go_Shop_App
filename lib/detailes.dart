import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);
  @override
  State<Details> createState() => _ProfileState();
}
class _ProfileState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          const SizedBox(
            height: 10,
            width: 10,
          ),
          Stack(children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/p1.jpg",
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.deepPurple,
                  ),
                )),
            Align(
                alignment: const Alignment(0.8, 0.8),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.deepPurple,
                  ),
                )),
          ]),
          const SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("Women's Fall Winter Scarf",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )),
                        const Text(
                          "American Tends",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                            "Wearing this scarf in cold fall winter or spring days"),
                        const Text(
                            "would be in good ,long times use and durable.you can"),
                        const Text(
                            "use it as a shawl to attend an evening party, or as"),
                        const Text(
                            "wrap when you go out for a wonderful travel. Soft,"),
                        const Text("warm , lightweight,easy carry."),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "Material & Size",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                            "Ultra Soft Cashmere-like Acrylic , crazy , light"),
                        const Text(
                            "and warm , close to skin . oversize:59x59(L X)"),
                        const SizedBox(
                          height: 30,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: FloatingActionButton.extended(
                            label: const Text(' 15.99  | Add To Cart'),
                            // <-- Text
                            backgroundColor: Colors.deepPurple,
                            icon: const Icon(
                              // <-- Icon
                              Icons.shopping_bag,
                              size: 24.0,
                              color: Colors.orange,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ])))
        ]));
  }
}
