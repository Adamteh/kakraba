import 'package:flutter/material.dart';

import '../constants.dart';

Future addGoalButtomSheet(context) {
  return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      context: context,
      builder: (ctx) {
        return SizedBox(
          height: 325,
          child: Column(children: [
            const SizedBox(height: 10),
            const Text(
              'Add a Goal',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: SizedBox(
                height: 50.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    filled: true,
                    fillColor: Colors.grey[100],
                    labelText: 'Enter Goal here*',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: SizedBox(
                height: 50.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    filled: true,
                    fillColor: Colors.grey[100],
                    prefixText: kGhanaCedi.toString(),
                    labelText: 'Target Amount*',
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'ADD',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SF Pro Text',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        );
      });
}
