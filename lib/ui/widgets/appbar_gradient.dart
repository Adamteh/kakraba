import 'package:flutter/material.dart';

Widget appBarGradient() {
  return Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment(0.3, -1.19),
        end: Alignment(0.0, 1.0),
        colors: [Color(0xff6818aa), Color(0xff7957ec)],
      ),
      boxShadow: [
        BoxShadow(
          color: Color(0x29000000),
          offset: Offset(0, 3),
          blurRadius: 6,
        ),
      ],
    ),
  );
}
