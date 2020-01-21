import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/navigation.dart';


class FullScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        transitionBetweenRoutes: true,
        leading: CupertinoButton(
        onPressed: () => Navigation.popNavigation(),
        child: Text('Cancel', style: TextStyle(
      fontSize: 10.0, color: Colors.lightBlue[200])),
        ),
        middle: Text('Informações sobre o calculo',  style: TextStyle(color: Colors.lightBlue[200], fontFamily: "Helvetica"),),
      ),
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 200),
          child: Column (
          children: <Widget>[
           Text("O IMC é calculado dividindo o peso pela altura elevada ao quadrado.", textAlign: TextAlign.center, style: TextStyle(fontFamily: "Helvetica")),
           Padding(padding: EdgeInsets.all(5),),
           Text("Ou seja, de forma mais simples, você multiplica sua altura por ela mesma e depois divide seu peso pelo resultado da última conta.", textAlign: TextAlign.center,style: TextStyle(fontFamily: "Helvetica")),
           Padding(padding: EdgeInsets.all(5),),
           Text("Por exemplo, uma pessoa com 1,70 m e 70 kg fará o seguinte cálculo:", textAlign: TextAlign.center,style: TextStyle(fontFamily: "Helvetica")),
           Padding(padding: EdgeInsets.all(5),),
           Text("Altura multiplicada por ela mesma: 1,70 x 1,70 = 2,89", textAlign: TextAlign.center,style: TextStyle(fontFamily: "Helvetica")),
           Padding(padding: EdgeInsets.all(5),),
           Text("Peso dividido pelo quadrado da altura: 70 / 2,89 = 24,22", textAlign: TextAlign.center,style: TextStyle(fontFamily: "Helvetica")),
        ],
      ),
      )
    ));
  }
}

