import 'package:flutter/material.dart';

class PiggyButton extends StatelessWidget {
  final String? title;
  final String? amount;
  final Color? color;
  final Function? onPressed;
  const PiggyButton(
      {Key? key,
      @required this.title,
      @required this.color,
      @required this.onPressed,
      this.amount})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 119,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            )),
        onPressed: () {
          onPressed!();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/kakraba/images/piggy.png',
              width: 64,
              height: 56,
            ),
            Text(
              title!,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xff000000),
              ),
              textAlign: TextAlign.center,
            ),
            amount == null
                ? Container()
                : Text(
                    amount!,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    textAlign: TextAlign.center,
                  ),
          ],
        ),
      ),
    );
  }
}
