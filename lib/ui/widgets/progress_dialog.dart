import 'package:flutter/material.dart';
import '../../ui/constants.dart';

class Dialogs {
  static Future<void> showLoadingDialog(
      BuildContext context, GlobalKey key, String title, Color bgColor) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return WillPopScope(
              onWillPop: () async => false,
              child: SimpleDialog(
                  key: key,
                  backgroundColor: bgColor,
                  children: <Widget>[
                    Center(
                      child: Column(children: [
                        Text(title,
                            style: const TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w700)),
                        const SizedBox(
                          height: 15,
                        ),
                        const CircularProgressIndicator(),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          kPleaseWait,
                          style: TextStyle(color: Colors.blueAccent),
                        )
                      ]),
                    )
                  ]));
        });
  }
}
