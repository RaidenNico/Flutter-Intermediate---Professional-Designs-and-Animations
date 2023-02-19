import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';

import '../helpers/helpers.dart';

class ZapatoPage extends StatelessWidget {
  const ZapatoPage({super.key});

  @override
  Widget build(BuildContext context) {
    cambiarStatusLight();

    return Scaffold(
      body: Column(
        children: <Widget>[
          const CustomAppBar(texto: "For you"),
          const SizedBox(height: 20),
          Expanded(
              child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: const <Widget>[
                Hero(tag: "zapato-1", child: ZapatoSizePreview()),
                ZapatoDescripcion(
                    titulo: 'Nike Air Max 720',
                    descripcion:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."),
              ],
            ),
          )),
          const AgregarCarritoBoton(monto: 180.0)
        ],
      ),
    );
  }
}
