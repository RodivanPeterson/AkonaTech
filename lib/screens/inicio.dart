import 'package:flutter/material.dart';
import 'package:jarona_rascunho/Widgets/widgets-inicio.dart';
import 'package:jarona_rascunho/assets/collors.dart';
import 'package:jarona_rascunho/assets/sizes.dart';

class Inicio extends StatefulWidget {
  const Inicio({ Key? key }) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: HOME_SCREEN_BACKGROUND,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.settings, size: ICONSIZE, color: COLOR3),
          onPressed: (){},
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
      ), 
      body: Container(
        width: screenWidth,
        height: MediaQuery.of(context).size.height,
        child: LayoutBuilder(
          builder: (context, constraint){
            var largura = constraint.maxWidth;
            
            if(largura < 320.0){
              return Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 0.8*screenWidth,
                        //height: 20,
                        margin: EdgeInsets.only(top:10),
                        color: Colors.transparent,
                        child: Text(
                          'Dados sobre o seu bananal',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: FONTSIZE*1.5,
                            fontFamily: 'TenorSans',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        //padding: EdgeInsets.all(10),
                        width: 0.8*screenWidth,
                        //height: 0.4*screenWidth,
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.only(bottom: 5),
                              width: 0.8*screenWidth,
                              //height: 150,
                              color: COLOR2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    '1024',
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: FONTSIZE*1.5,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white
                                    ),
                                  ),
                                  Text(
                                    'BANANEIRAS REGISTRADAS',
                                    style: TextStyle(
                                      fontFamily: 'BigShouldersDisplay-Thin',
                                      fontSize: FONTSIZE*1.2,
                                      color: COLOR5,
                                      letterSpacing: -1.3
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.only(bottom: 5),
                              width: 0.8*screenWidth,
                              //height: 150,
                              color: COLOR2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    '59.683',
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: FONTSIZE*1.5,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white
                                    ),
                                  ),
                                  Text(
                                    'CACHOS COLHIDOS',
                                    style: TextStyle(
                                      fontFamily: 'BigShouldersDisplay-Thin',
                                      fontSize: FONTSIZE*1.2,
                                      color: COLOR5,
                                      letterSpacing: -1.3
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              padding: EdgeInsets.all(5),
                              width: 0.8*screenWidth,
                              //height: 150,
                              color: COLOR2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    '318',
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: FONTSIZE*1.5,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white
                                    ),
                                  ),
                                  Text(
                                    'CACHOS PRONTOS',
                                    style: TextStyle(
                                      fontFamily: 'BigShouldersDisplay-Thin',
                                      fontSize: FONTSIZE*1.2,
                                      color: COLOR5,
                                      letterSpacing: -1.3
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              width: 0.8*screenWidth,
                              //height: 150,
                              color: COLOR2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'R\$ 20.345.788',
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: FONTSIZE*1.5,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white
                                    ),
                                  ),
                                  Text(
                                    'FATURAMENTO DE JANEIRO (VALOR BRUTO)',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'BigShouldersDisplay-Thin',
                                      fontSize: FONTSIZE*1.2,
                                      color: COLOR5,
                                      letterSpacing: -1.3
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 0.8*screenWidth,
                        height: 1.13*screenWidth,
                        color: COLOR7,
                        child: SingleChildScrollView(
                          child:Column(
                            children: [
                              Container(
                                width: 0.8*screenWidth,
                                color: COLOR5,
                                padding: EdgeInsets.all(5),
                                child: Center(
                                  child: Text(
                                    'Últimos Registros',
                                    style: TextStyle(
                                      fontFamily: 'TenorSans',
                                      fontSize: FONTSIZE*1.5,
                                      color: COLOR10,
                                    ),
                                  ),
                                )
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '28/01/2022',
                                acao: 'Registro de Adubação',
                                isFisrt: true,
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '28/01/2022',
                                acao: 'Registro de Adubação',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                              ItemUltimoRegistro(
                                larguraDaTela: screenWidth,
                                data: '27/01/2022',
                                acao: 'Registro de Colheita',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              if(largura < 480.0){
                return Text('data');
              } else {
                if(largura < 768.0){
                  return Text('data');
                } else {
                  if(largura < 1024.0){
                    return Text('data');
                  } else {
                    if(largura < 1200.0){
                      return Text('data');
                    } else {
                      return Text('data');
                    }
                  }
                }
              }
            }
          },
        ),
      )
    );
  }
}