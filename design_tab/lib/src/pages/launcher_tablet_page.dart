// ignore: duplicate_ignore
// ignore: unused_import
// ignore_for_file: depend_on_referenced_packages, unused_import

import 'package:design/src/labs/slideshow_page.dart';
import 'package:design/src/models/layout_model.dart';
import 'package:design/src/routes/routes.dart';
import 'package:design/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LauncherTabletPage extends StatelessWidget {
  const LauncherTabletPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context);
    final layoutModel = Provider.of<LayoutModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Diseños en Flutter - Tablet"),
        backgroundColor: appTheme.currentTheme.colorScheme.secondary,
      ),
      drawer: const _MenuPrincipal(),

      body: Row(
        children: <Widget>[
          const SizedBox(
            width: 300,
            height: double.infinity,
            child: _ListaOpciones(),
          ),
          Container(
            width: 1,
            height: double.infinity,
            color: (appTheme.darkTheme)
                ? Colors.grey
                : appTheme.currentTheme.colorScheme.secondary,
          ),
          Expanded(
            child: layoutModel.currentPage,
          )
        ],
      ),

      //body: _ListaOpciones()
    );
  }
}

class _ListaOpciones extends StatelessWidget {
  const _ListaOpciones();

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, i) => ListTile(
        leading:
            FaIcon(pageRoutes[i].icon, color: appTheme.colorScheme.secondary),
        title: Text(pageRoutes[i].titulo),
        trailing: Icon(
          Icons.chevron_right,
          color: appTheme.colorScheme.secondary,
        ),
        onTap: () {
          //Navigator.push(context,
          //   MaterialPageRoute(builder: (context) => pageRoutes[i].page));
          final layoutModel = Provider.of<LayoutModel>(context, listen: false);
          layoutModel.currentPage = pageRoutes[i].page;
        },
      ),
      separatorBuilder: (context, i) => Divider(
        color: appTheme.primaryColorLight,
      ),
      itemCount: pageRoutes.length,
    );
  }
}

class _MenuPrincipal extends StatelessWidget {
  const _MenuPrincipal();
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context);
    final accentColor = appTheme.currentTheme.colorScheme.secondary;
    return Drawer(
      child: Column(
        children: <Widget>[
          SafeArea(
            child: SizedBox(
              width: double.infinity,
              height: 200,
              child: CircleAvatar(
                backgroundColor: accentColor,
                child: const Text(
                  "FH",
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
          ),
          const Expanded(child: _ListaOpciones()),
          ListTile(
            leading: Icon(
              Icons.lightbulb_outline,
              color: accentColor,
            ),
            title: const Text("Dark Mode"),
            trailing: Switch.adaptive(
                value: appTheme.darkTheme,
                activeColor: accentColor,
                onChanged: (value) => appTheme.darkTheme = value),
          ),
          SafeArea(
            bottom: true,
            top: false,
            left: false,
            right: false,
            child: ListTile(
              leading: Icon(
                Icons.add_to_home_screen,
                color: accentColor,
              ),
              title: const Text("Custom Theme"),
              trailing: Switch.adaptive(
                value: appTheme.customtheme,
                activeColor: accentColor,
                onChanged: (value) => appTheme.customtheme = value,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
