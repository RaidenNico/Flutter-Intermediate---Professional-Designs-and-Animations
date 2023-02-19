// ignore_for_file: depend_on_referenced_packages, deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:design/src/pages/animaciones_page.dart';
import 'package:design/src/pages/emergency_page.dart';
import 'package:design/src/pages/graficas_circulares_page.dart';
import 'package:design/src/pages/headers_page.dart';

import 'package:design/src/pages/pinterest_page.dart';
import 'package:design/src/pages/slideshow_page.dart';

// ignore: duplicate_ignore
final pageRoutes = <_Route>[
  _Route(FontAwesomeIcons.slideshare, "Slideshow", const SlideshowPage()),
  // ignore: deprecated_member_use
  _Route(FontAwesomeIcons.ambulance, "Emergencia", const EmergencyPage()),
  _Route(FontAwesomeIcons.heading, "Encabezados", const HeadersPage()),
  _Route(
      FontAwesomeIcons.peopleCarry, "Cuadro Animado", const AnimacionesPage()),
  _Route(FontAwesomeIcons.circleNotch, "Barra Progreso",
      const GraficasCircularesPage()),
  _Route(FontAwesomeIcons.pinterest, "Pinterest", const PinterestPage()),
];

class _Route {
  final IconData icon;
  final String titulo;
  final Widget page;

  _Route(this.icon, this.titulo, this.page);
}
