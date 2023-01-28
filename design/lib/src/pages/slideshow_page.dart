import 'package:design/src/widgets/slideshow.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';

class SlideshowPage extends StatelessWidget {
  const SlideshowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sliders"),
          backgroundColor: Colors.orange,
        ),
        backgroundColor: Colors.deepOrange[100],
        body: Column(
          children: const <Widget>[
            Expanded(child: MiSlideshow()),
            Expanded(child: MiSlideshow())
          ],
        ));
  }
}

class MiSlideshow extends StatelessWidget {
  const MiSlideshow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Slideshow(
      bulletPrimario: 17,
      bulletSecundario: 12,
      //puntosArriba: false,
      colorPrimario: Colors.red,
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
