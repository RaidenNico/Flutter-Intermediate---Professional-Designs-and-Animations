// ignore_for_file: depend_on_referenced_packages

import 'package:animacion/src/pages/twitter_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animate_do/animate_do.dart';
import 'package:animacion/src/pages/navegacion_page.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeIn(
            duration: const Duration(milliseconds: 500),
            child: const Text("Animate_do")),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const TwitterPage()));
              },
              icon: const FaIcon(FontAwesomeIcons.twitter)),
          SlideInLeft(
            from: 100,
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) =>
                              const Pagina1Page()));
                },
                icon: const Icon(Icons.navigate_next)),
          ),
        ],
      ),
      floatingActionButton: ElasticInRight(
        child: FloatingActionButton(
          child: const FaIcon(FontAwesomeIcons.play),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const NavagacionPage()));
          },
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElasticIn(
              delay: const Duration(milliseconds: 1100),
              child:
                  const Icon(Icons.new_releases, color: Colors.blue, size: 40)),
          FadeInDown(
            delay: const Duration(milliseconds: 2000),
            child: const Text(
              "Titulo",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200),
            ),
          ),
          FadeInDown(
            delay: const Duration(milliseconds: 800),
            child: const Text(
              "Soy un texto pequeño",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
            ),
          ),
          FadeInLeft(
            delay: const Duration(milliseconds: 1100),
            child: Container(
              width: 220,
              height: 2,
              color: Colors.blue,
            ),
          )
        ],
      )),
    );
  }
}
