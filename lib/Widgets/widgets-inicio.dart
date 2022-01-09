import 'package:flutter/material.dart';
import 'package:jarona_rascunho/assets/collors.dart';
import 'package:jarona_rascunho/assets/sizes.dart';

class ItemUltimoRegistro extends StatelessWidget {
  final double larguraDaTela;
  final String data;
  final String acao;
  final bool isFisrt;

  const ItemUltimoRegistro({ Key? key, this.larguraDaTela = 380.00, this.data = '23/01/2022', this.acao = 'Regristro de Colheita', this.isFisrt = false }): super(key: key);
  @override
  Widget build(BuildContext context) {
    FontSize fontT = FontSize();
    double tamnhoDaFonte = fontT.tamanhoFonte(larguraDaTela);

    return Container(
      color: COLOR6,
      width: 0.75*this.larguraDaTela,
      margin: this.isFisrt ? EdgeInsets.fromLTRB(2, 20, 2, 5) : EdgeInsets.fromLTRB(2, 5, 2, 5),
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            this.data,
            textAlign: TextAlign.end,
            style: TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.w300,
            fontSize: tamnhoDaFonte,
            color: COLOR10,
            ),
          ),
          Text(
            this.acao,
            textAlign: TextAlign.start,
            style: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: tamnhoDaFonte,
            color: COLOR10,
            ),
          )
        ],
      )
    );
  }
}