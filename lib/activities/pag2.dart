import 'package:flutter/material.dart';
import '../aux/mybutton.dart';
import 'pag3.dart';
class Pag2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'La Mezcladora',
      home: Scaffold(
        appBar: AppBar(
          title: Text('La Mezcladora'),
        ),        
        body: Padding(
          padding: EdgeInsets.only(top:40),
          child: Column(
          
          children: <Widget> [
            
            Container(
                         
              child: Text(
                '¿QUÉ VAMOS A MEZCLAR EL DÍA DE HOY?',              
                style: TextStyle(fontSize: 18.0),
                ),
              ),
            Padding(
              padding: EdgeInsets.only(top:150,left:20),
              child: Row(
              
              children:<Widget> [
                Container(
                
                child: MyButton(name:'MORTERO',width: 200,height: 80,pagina: Pag3()),
                ),
                Padding(
                  padding: EdgeInsets.only(left:30),
                  child:Image.asset(
                  'resources/graphics/mortero.jpg',
                  
                  width:  150,
                  height: 100,),
                )
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(top:150,left:20),
              child:Row(
              children:<Widget> [
                Container(
                
                child: MyButton(name:'CONCRETO',width: 200,height: 80),
                ),
                Padding(
                  padding: EdgeInsets.only(left:30),
                  child:Image.asset(
                  'resources/graphics/concreto.jpg',
                  width:  150,
                  height: 100,),
                ),
              ]),               
            )
          ]),
        )
      )              
    );
  }
}

