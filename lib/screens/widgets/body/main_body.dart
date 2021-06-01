import 'package:flutter/material.dart';
import 'top_body.dart';

Widget mainBody({
  required Widget body,
}) {
  return Expanded(
    child: SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            topBody(),
            body,
          ],
        ),
      ),
    ),
  );
}
