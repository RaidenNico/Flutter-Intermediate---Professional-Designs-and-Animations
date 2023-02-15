//!import 'package:design/src/challenge/cuadrado_animado_page.dart';
//!import 'package:design/src/pages/circular_progress_page.dart';
//!import 'package:design/src/pages/animaciones_page.dart';
//!import 'package:design/src/labs/slideshow_page.dart';
//!import 'src/pages/graficas_circulares_page.dart';
//!import 'package:design/src/pages/headers_page.dart';
//!import 'package:design/src/pages/slideshow_page.dart';
//!import 'package:design/src/pages/pinterest_page.dart';
//!import 'package:design/src/pages/emergency_page.dart';
import 'package:design/src/models/layout_model.dart';
import 'package:design/src/pages/launcher_page.dart';
import 'package:design/src/pages/launcher_tablet_page.dart';
import 'package:design/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (_) => new LayoutModel(),
      child: ChangeNotifierProvider(
        create: (_) => new ThemeChanger(2),
        child: const MyApp(),
      ),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return MaterialApp(
      theme: currentTheme,
      debugShowCheckedModeBanner: false,
      title: 'Diseños App',
      home: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          final screenSize = MediaQuery.of(context).size;
          if (screenSize.width > 500) {
            return LauncherTabletPage();
          } else {
            return LauncherPage();
          }

          //return Container(
          //   child: LauncherPage(),
          // );
        },
      ),
    );
  }
}
