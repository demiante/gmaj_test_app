import 'package:flutter/material.dart';

class Clase11 extends StatefulWidget {
  Clase11({Key? key}) : super(key: key);

  @override
  State<Clase11> createState() => _Clase11State();
}

class _Clase11State extends State<Clase11> {
  String fotito = 'lib/assets/sinImagen.jpg';
  void changeVal(int val) {
    setState(() {
      value = val;
    });
  }

  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clase 11-12"),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hacer Tap, Doble Tap y Long Press Sobre la Imagen'),
            GestureDetector(
              onTap: () => darNombreImagen(0),
              onDoubleTap: () => darNombreImagen(1),
              onLongPress: () => darNombreImagen(2),
              child: Image(
                image: AssetImage(fotito),
              ),
            ),
            Text("imagen: $fotito"),
          ],
        ),
      ),
    );
  }

  darNombreImagen(int index) {
    String imagen;
    if (index == 0) {
      imagen = 'lib/assets/gmajLogo.jpg';
      fotito = imagen;
      setState(() {
        value += 1;
      });
    }

    if (index == 1) {
      imagen = 'lib/assets/gmajLogo2.jpg';
      fotito = imagen;
      print("Imagen 1");
      setState(() {
        value += 1;
      });
    }
    if (index != 0 && index != 1) {
      imagen = 'lib/assets/sinImagen.jpg';
      fotito = imagen;
      setState(() {
        value += 1;
      });
    }
  }
}
