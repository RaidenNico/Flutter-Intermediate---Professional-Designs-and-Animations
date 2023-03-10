// ignore_for_file: depend_on_referenced_packages

import 'package:design/src/theme/theme.dart';
import 'package:design/src/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeadersPage extends StatelessWidget {
  const HeadersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final accentColor =
        Provider.of<ThemeChanger>(context).currentTheme.colorScheme.secondary;

    return Scaffold(body: HeaderWave(color: accentColor));
  }
}
