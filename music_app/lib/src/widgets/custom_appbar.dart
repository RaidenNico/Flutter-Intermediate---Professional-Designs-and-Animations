// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: const <Widget>[
            Icon(FontAwesomeIcons.chevronLeft),
            Spacer(),
            Icon(FontAwesomeIcons.commentAlt),
            SizedBox(
              width: 20,
            ),
            Icon(FontAwesomeIcons.headphonesAlt),
            SizedBox(
              width: 20,
            ),
            Icon(FontAwesomeIcons.externalLinkAlt),
          ],
        ),
      ),
    );
  }
}
