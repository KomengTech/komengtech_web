import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Widget rightBarMenu() {
  return Container(
    color: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 20.0,
          backgroundImage: AssetImage('assets/logo.png'),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () => launch('tel:+6598621921'),
                icon: FaIcon(FontAwesomeIcons.phoneSquare)),
            const SizedBox(height: 20.0),
            IconButton(
                onPressed: () => launch('https://bit.ly/34xmYX1'),
                icon: FaIcon(FontAwesomeIcons.linkedin)),
            const SizedBox(height: 20.0),
            IconButton(
                onPressed: () => launch('https://bit.ly/3c33NZq'),
                icon: FaIcon(FontAwesomeIcons.github)),
            const SizedBox(height: 20.0),
            IconButton(
                onPressed: () => launch('https://bit.ly/2RPs7qR'),
                icon: FaIcon(FontAwesomeIcons.filePdf)),
          ],
        ),
        Container(
          width: 40,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.grey.shade200)),
          child: Image.asset(
            'assets/singapore.png',
          ),
        ),
      ],
    ),
  );
}
