import 'package:flutter/material.dart';
import 'package:jarona_rascunho/assets/collors.dart';
import 'package:jarona_rascunho/home.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AkonaTech',
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: COLOR9),
      ),
    );
  }
}