//import 'package:design/src/challenge/cuadrado_animado_page.dart';
//import 'package:design/src/pages/circular_progress_page.dart';
//import 'package:design/src/pages/animaciones_page.dart';
import 'package:design/src/pages/slideshow_page.dart';
import 'package:flutter/material.dart';

//import 'src/pages/graficas_circulares_page.dart';

//import 'package:design/src/pages/headers_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Diseños App',
        home: SlideShowPage());
  }
}
