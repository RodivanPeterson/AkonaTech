import 'package:flutter/material.dart';
import 'package:jarona_rascunho/assets/collors.dart';
import 'package:jarona_rascunho/assets/sizes.dart';

class Graficos extends StatefulWidget {
  const Graficos({ Key? key }) : super(key: key);

  @override
  _GraficosState createState() => _GraficosState();
}

class _GraficosState extends State<Graficos> {

  String _yearsOpition = "2021";
  String _graphicsOpition = "Dados";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 50),
        width: 0.9*screenWidth,
        height: 3*screenWidth,
        color: COLOR3.withOpacity(0.54),
        child: SingleChildScrollView(
          child:Column(
            children: [
              Container(
                width: 0.9*screenWidth,
                color: COLOR5.withOpacity(0.64),
                padding: EdgeInsets.all(5),
                height: 0.15*screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Dados de ',
                          style: TextStyle(
                            fontFamily: 'TenorSans',
                            fontSize: 20,
                            color: COLOR8,
                          ),
                        ),
                      )
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: PopupMenuButton(
                          padding: EdgeInsets.all(1),
                          color: COLOR5.withOpacity(0.95),
                          icon: Text(
                            _yearsOpition,
                            style: TextStyle(
                              fontFamily: 'TenorSans',
                              fontSize: 20,
                              color: COLOR8,
                            ),
                          ),
                          initialValue: _yearsOpition,
                          onSelected: (yearsOpition){
                            setState(() {
                              _yearsOpition = yearsOpition.toString();
                              print(yearsOpition);
                              print(_yearsOpition);
                            });
                          },
                          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                            PopupMenuItem(
                              value: "2018",
                              child: Text(
                                '2018',
                                style: TextStyle(
                                  fontFamily: 'TenorSans',
                                  fontSize: 18,
                                  color: COLOR8,
                                ),
                              )
                            ),
                            PopupMenuItem(
                              value: "2019",
                              child: Text(
                                '2019',
                                style: TextStyle(
                                  fontFamily: 'TenorSans',
                                  fontSize: 18,
                                  color: COLOR8,
                                ),
                              )
                            ),
                            PopupMenuItem(
                              value: "2020",
                              child: Text(
                                '2020',
                                style: TextStyle(
                                  fontFamily: 'TenorSans',
                                  fontSize: 18,
                                  color: COLOR8,
                                ),
                              )
                            ),
                            PopupMenuItem(
                              value: "2021",
                              child: Text(
                                '2021',
                                style: TextStyle(
                                  fontFamily: 'TenorSans',
                                  fontSize: 18,
                                  color: COLOR8,
                                ),
                              )
                            ),
                          ],
                        ),
                      )
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: COLOR4
                        ),
                        child: PopupMenuButton(
                          padding: EdgeInsets.all(1),
                          icon: Icon(Icons.arrow_drop_down, color: COLOR7,),
                          iconSize: ICONSIZE,
                          color: COLOR5.withOpacity(0.95),
                          initialValue: _graphicsOpition,
                          onSelected: (graphicsOpition){
                            setState(() {
                              _graphicsOpition = graphicsOpition.toString();
                              print(graphicsOpition);
                              print(_graphicsOpition);
                            });
                          },
                          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                            PopupMenuItem(
                              value: "Dados",
                              child: Text(
                                'Dados',
                                style: TextStyle(
                                  fontFamily: 'TenorSans',
                                  fontSize: 18,
                                  color: COLOR8,
                                ),
                              )
                            ),
                            PopupMenuItem(
                              value: "Estimativas",
                              child: Text(
                                'Estimativas',
                                style: TextStyle(
                                  fontFamily: 'TenorSans',
                                  fontSize: 18,
                                  color: COLOR8,
                                ),
                              )
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 5),
                child:Image.asset(
                  "images/grafico-1.png",
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 30),
                child:Image.asset(
                  "images/grafico-1.png",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}