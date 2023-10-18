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
          padding: EdgeInsets.all(height * 0.02),
          color: const Color.fromARGB(178, 246, 158, 188),
          width: width)
    ]));
  }
}
