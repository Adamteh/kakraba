library kakraba;

import 'package:flutter/material.dart';

import 'ui/views/home.dart';

class Kakraba extends StatefulWidget {
  const Kakraba({Key? key}) : super(key: key);

  @override
  _KakrabaState createState() => _KakrabaState();
}

class _KakrabaState extends State<Kakraba> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kakraba',
      theme: ThemeData(
        primaryColor: const Color(0xff6818aa),
        primarySwatch: Colors.purple,
        fontFamily: 'Trebuchet MS',
      ),
      home: const HomePage(),
    );
  }
}
