import 'package:flutter/material.dart';
import 'package:shoes_app/src/models/zapato_model.dart';
import 'src/pages/zapato_page.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ZapatolModel()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Shoes App',
        debugShowCheckedModeBanner: false,
        home: ZapatoPage());
  }
}
