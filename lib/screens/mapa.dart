import 'package:flutter/material.dart';

class Mapa extends StatefulWidget {
  const Mapa({ Key? key }) : super(key: key);

  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/Mapa-completo.png",
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.fitHeight,
      alignment: Alignment.center,
    );
  }
}