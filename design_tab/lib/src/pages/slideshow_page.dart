import 'package:design/src/theme/theme.dart';
import 'package:design/src/widgets/slideshow.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class SlideshowPage extends StatelessWidget {
  const SlideshowPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLarge;
    if (MediaQuery.of(context).size.height > 500) {
      isLarge = true;
    } else {
      isLarge = false;
    }

    final children = [
      Expanded(child: MiSlideshow()),
      Expanded(child: MiSlideshow())
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text("Sliders"),
          backgroundColor: Colors.orange,
        ),
        backgroundColor: Colors.deepOrange[100],
        body: (isLarge) ? Column(children: children) : Row(children: children));
  }
}

class MiSlideshow extends StatelessWidget {
  const MiSlideshow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context);
    final accentColor = appTheme.currentTheme.accentColor;

    return Slideshow(
      bulletPrimario: 17,
      bulletSecundario: 12,
      //puntosArriba: false,
      colorPrimario: (appTheme.darkTheme) ? accentColor : Colors.red,
      colorSecundario: Colors.grey,
      slides: <Widget>[
        SvgPicture.asset("assets/svgs/slide-1.svg"),
        SvgPicture.asset("assets/svgs/slide-2.svg"),
        SvgPicture.asset("assets/svgs/slide-3.svg"),
        SvgPicture.asset("assets/svgs/slide-4.svg"),
        SvgPicture.asset("assets/svgs/slide-5.svg"),
      ],
    );
  }
}
