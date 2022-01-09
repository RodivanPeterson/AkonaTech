import 'package:flutter/material.dart';
import 'package:jarona_rascunho/assets/collors.dart';
import 'package:jarona_rascunho/assets/sizes.dart';
import 'package:jarona_rascunho/screens/camera.dart';
import 'package:jarona_rascunho/screens/graficos.dart';
import 'package:jarona_rascunho/screens/inicio.dart';
import 'package:jarona_rascunho/screens/registro.dart';

import 'screens/mapa.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _actualIndex = 2;

  @override
  Widget build(BuildContext context) {

    var larguraTela = MediaQuery.of(context).size.width;
    IconSize iconsize = IconSize();
    var tamanhodoicone = iconsize.tamanhodoicone(larguraTela);

    List<Widget> screens = [
      Mapa(),
      Camera(),
      Inicio(),
      Graficos(),
      Registros()
    ];

    return Scaffold(
      backgroundColor: HOME_SCREEN_BACKGROUND,
      body: screens[_actualIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _actualIndex,
          type: BottomNavigationBarType.shifting,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
            fontFamily: "TenorSans"
          ),
          onTap: (numberIndex){
            setState(() {
              _actualIndex = numberIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: "Mapa",
              icon: Icon(Icons.map/*place_rounded*/, size: tamanhodoicone, color: BOTTOM_NAVIGATION_BAR_ICON_COLLOR),
              backgroundColor: BACKGROUND_OF_BOTTOM_NAVIGATION_BAR_ICON_COLLOR,
            ),
            BottomNavigationBarItem(
              label: "Câmera",
              icon: Icon(Icons.camera_alt_rounded, size: tamanhodoicone, color: BOTTOM_NAVIGATION_BAR_ICON_COLLOR),
              backgroundColor: BACKGROUND_OF_BOTTOM_NAVIGATION_BAR_ICON_COLLOR,
            ),
            BottomNavigationBarItem(
              label: "Início",
              icon: Icon(Icons.home, size: tamanhodoicone, color: BOTTOM_NAVIGATION_BAR_ICON_COLLOR),
              backgroundColor: BACKGROUND_OF_BOTTOM_NAVIGATION_BAR_ICON_COLLOR,
            ),
            BottomNavigationBarItem(
              label: "Gráficos",
              icon: Icon(Icons.leaderboard, size: tamanhodoicone, color: BOTTOM_NAVIGATION_BAR_ICON_COLLOR),
              backgroundColor: BACKGROUND_OF_BOTTOM_NAVIGATION_BAR_ICON_COLLOR,
            ),
            BottomNavigationBarItem(
              label: "Registros",
              icon: Icon(Icons.post_add/*grass*/, size: tamanhodoicone, color: BOTTOM_NAVIGATION_BAR_ICON_COLLOR),
              backgroundColor: BACKGROUND_OF_BOTTOM_NAVIGATION_BAR_ICON_COLLOR,
            ),
          ],
        ),
      ),
    );
  }
}