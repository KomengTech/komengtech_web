import 'package:flutter/material.dart';

Widget topBody() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(border: Border.all(color: Colors.white)),
    child: FittedBox(
      // fit: BoxFit.scaleDown,
      child: Text(
        'I\'M A DEVELOPER',
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}
