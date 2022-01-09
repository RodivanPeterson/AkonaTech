import 'package:flutter/material.dart';
import 'package:jarona_rascunho/assets/collors.dart';

class Registros extends StatefulWidget {
  const Registros({ Key? key }) : super(key: key);

  @override
  _RegistrosState createState() => _RegistrosState();
}

class _RegistrosState extends State<Registros> {
  //String _dateTime = '';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 50),
        width: 0.8*screenWidth,
        height: 3*screenWidth,
        //color: COLLOR3.withOpacity(0.54),
        child: SingleChildScrollView(
          child:Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 30),
                decoration: BoxDecoration(
                  border: Border.all(color: COLOR6.withOpacity(0.4), width: 3.0)
                ),
                child:Image.asset(
                  "images/mapa-adubacao.png",
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 0.8*screenWidth,
                height: 0.15*screenWidth,
                child: TextField(
                  cursorColor: COLOR3,
                  style: TextStyle(
                    color: COLOR3,
                    fontSize: 17,
                    fontFamily: 'TenorSans',
                  ),
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: 'Data da adubação',
                    labelStyle: TextStyle(
                      color: COLOR3,
                      fontSize: 17,
                      fontFamily: 'TenorSans',
                    ),
                    hintText: ' / /  ',
                    hintStyle: TextStyle(
                      color: COLOR3,
                      fontSize: 17,
                      fontFamily: 'TenorSans',
                    ),
                    filled: true,
                    fillColor: COLOR6.withOpacity(0.4),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 0.8*screenWidth,
                height: 0.15*screenWidth,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Quantidade de adubo ultilizada',
                    labelStyle: TextStyle(
                      color: COLOR3,
                      fontSize: 17,
                      fontFamily: 'TenorSans',
                    ),
                    hintText: 'Ex: 30 kg',
                    hintStyle: TextStyle(
                      color: COLOR3,
                      fontSize: 17,
                      fontFamily: 'TenorSans',
                    ),
                    filled: true,
                    fillColor: COLOR6.withOpacity(0.4),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 0.8*screenWidth,
                height: 0.15*screenWidth,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Preço do quilo do adubo utilizado',
                    labelStyle: TextStyle(
                      color: COLOR3,
                      fontSize: 17,
                      fontFamily: 'TenorSans',
                    ),
                    hintText: 'R\$ 60,00',
                    hintStyle: TextStyle(
                      color: COLOR3,
                      fontSize: 17,
                      fontFamily: 'TenorSans',
                    ),
                    filled: true,
                    fillColor: COLOR6.withOpacity(0.4),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 0.6*screenWidth,
                height: 0.15*screenWidth,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(COLOR6.withOpacity(0.4))),
                  onPressed: (){},
                  child: Text(
                    'Salvar',
                    style: TextStyle(
                      color: COLOR3,
                      fontSize: 20,
                      fontFamily: 'TenorSans',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}