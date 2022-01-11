import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomCard extends StatelessWidget {
  final String? text;
  final String? amount;
  final String? buttonText;
  final Color? buttonColor;
  final Function? onPressed;

  const CustomCard(
      {Key? key,
      required this.text,
      required this.amount,
      required this.buttonText,
      required this.buttonColor,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kIsWeb ? 184 : MediaQuery.of(context).size.width * 0.445,
      height: 155.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: const Color(0xffdcdcdc),
        boxShadow: const [
          BoxShadow(
            color: Color(0x5e000000),
            offset: Offset(0, 3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            text!,
            style: const TextStyle(fontSize: 14, color: Colors.black),
          ),
          Text(
            '$kGhanaCedi ' + amount!,
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
          ElevatedButton(
            onPressed: () {
              onPressed!();
            },
            child: Text(
              buttonText!,
              style: const TextStyle(
                  fontSize: 16, color: Colors.white, fontFamily: 'SF Pro Text'),
            ),
            style: ElevatedButton.styleFrom(
              primary: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
