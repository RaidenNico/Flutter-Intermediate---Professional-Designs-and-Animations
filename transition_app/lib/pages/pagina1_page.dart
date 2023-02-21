// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:transition_app/pages/pagina2_page.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina 1"),
      ),
      body: const Center(
        child: Text("Pagina 1"),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.access_time),
          onPressed: () {
            Navigator.push(context, _crearRuta());
          }),
    );
  }

  Route<Object?> _crearRuta() {
    return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) =>
            const Pagina2Page(),
        // transitionDuration: Duration(milliseconds: 1000),
        transitionsBuilder: (context, animation, secondaryAnimaton, child) {
          final curvedAnimation =
              CurvedAnimation(parent: animation, curve: Curves.easeInOut);

          //!! return SlideTransition(
          //!!  position: Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero)
          //!!     .animate(curvedAnimation),
          //!! child: child,
          //!!);

          //!!  return ScaleTransition(
          //!!     child: child,
          //!!    scale:
          //!!       Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation));

          //!!return RotationTransition(
          //!!   child: child,
          //!!  turns:
          //!!     Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation));

          return FadeTransition(
            opacity:
                Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
            child: child,
          );
        });
  }
}
