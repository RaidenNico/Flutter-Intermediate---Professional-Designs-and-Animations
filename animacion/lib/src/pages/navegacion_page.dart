// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:animate_do/animate_do.dart';

class NavagacionPage extends StatelessWidget {
  const NavagacionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _NotificationModel(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Notifications Page"),
        ),
        floatingActionButton: const BotonFlotante(),
        bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final int numero = Provider.of<_NotificationModel>(context).numero;
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.red,
      items: [
        const BottomNavigationBarItem(
            label: ("Bones"), icon: FaIcon(FontAwesomeIcons.bone)),
        BottomNavigationBarItem(
            label: ("Notificaciones"),
            icon: Stack(
              children: <Widget>[
                const FaIcon(FontAwesomeIcons.bell),
                Positioned(
                  top: 0.0,
                  right: 0.0,
                  child: BounceInDown(
                    from: 10,
                    animate: (numero > 0) ? true : false,
                    child: Bounce(
                      from: 10,
                      controller: (controller) =>
                          Provider.of<_NotificationModel>(context)
                              .bounceController = controller,
                      child: Container(
                        alignment: Alignment.center,
                        width: 12,
                        height: 12,
                        decoration: const BoxDecoration(
                            color: Colors.redAccent, shape: BoxShape.circle),
                        child: Text(
                          "$numero",
                          style:
                              const TextStyle(color: Colors.white, fontSize: 7),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
        const BottomNavigationBarItem(
            label: ("My Dog"), icon: FaIcon(FontAwesomeIcons.dog)),
      ],
    );
  }
}

class BotonFlotante extends StatelessWidget {
  const BotonFlotante({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          final notiModel =
              Provider.of<_NotificationModel>(context, listen: false);

          int numero = notiModel.numero;
          numero++;
          notiModel.numero = numero;
          if (numero >= 2) {
            final controller =
                Provider.of<_NotificationModel>(context).bounceController;
            controller.forward(from: 0.0);
          }
        },
        child: const FaIcon(FontAwesomeIcons.play));
  }
}

class _NotificationModel extends ChangeNotifier {
  final int _numero = 0;

  late AnimationController _bounceController;

  int get numero => _numero;
  set numero(int valor) {
    notifyListeners();
  }

  // ignore: unnecessary_getters_setters
  AnimationController get bounceController => _bounceController;
  set bounceController(AnimationController controller) {
    _bounceController = controller;
  }
}
