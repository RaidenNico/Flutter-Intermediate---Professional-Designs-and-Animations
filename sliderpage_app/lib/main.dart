import 'package:flutter/material.dart';
import 'package:sliderpage_app/src/page/slider_list_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Diseños App",
      home: SliverListPage(),
    );
  }
}
