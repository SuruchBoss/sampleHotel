import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Column(children: [
      Container(
        padding: EdgeInsets.only(
            top: height * 0.1,
            left: width * 0.05,
            right: width * 0.05,
            bottom: height * 0.05),
        color: const Color.fromARGB(178, 246, 158, 188),
        width: width,
        child: Row(children: [
          CircleAvatar(
            radius: width * 0.15,
            backgroundImage: const AssetImage("assets/peopleImg/ppl01.jpg"),
          )
        ]),
      )
    ]));
  }
}
