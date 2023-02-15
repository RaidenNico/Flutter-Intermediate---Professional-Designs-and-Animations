import 'package:design/src/theme/theme.dart';
import 'package:design/src/widgets/radial_progress.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GraficasCircularesPage extends StatefulWidget {
  const GraficasCircularesPage({super.key});

  @override
  State<GraficasCircularesPage> createState() => _GraficasCircularesPageState();
}

class _GraficasCircularesPageState extends State<GraficasCircularesPage> {
  double porcentaje = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            setState(() {
              porcentaje += 10;
              if (porcentaje > 100) {
                porcentaje = 0;
              }
            });
          },
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CustomRadialProgress(
                    porcentaje: porcentaje,
                    color: Colors.blue,
                  ),
                  CustomRadialProgress(
                    porcentaje: porcentaje * 1.2,
                    color: Colors.red,
                  )
                ],
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CustomRadialProgress(
                    porcentaje: porcentaje * 1.4,
                    color: Colors.amber,
                  ),
                  CustomRadialProgress(
                    porcentaje: porcentaje * 1.6,
                    color: Colors.green,
                  )
                ],
              ),
            ]));
  }
}

class CustomRadialProgress extends StatelessWidget {
  final Color color;

  const CustomRadialProgress(
      {super.key, required this.porcentaje, required this.color});

  final double porcentaje;

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return SizedBox(
      width: 180,
      height: 180,
      child: RadialProgress(
        porcentaje: porcentaje,
        colorPrimario: color,
        colorSecundario: appTheme.textTheme.bodyText1!.color ?? Colors.grey,
        grosorPrimario: 10,
        grosorSecundario: 4,
      ),
      //child: Text("$porcentaje%", style: TextStyle(fontSize: 50.0)),
    );
  }
}
