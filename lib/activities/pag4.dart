import 'package:flutter/material.dart';
import '../aux/formulas.dart';
class Pag4 extends StatelessWidget {
  //static const String tipo=" ";
  
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var dictionario=calculoMaterialesMortero(2, 100.0);
    return MaterialApp(
      //TODO: Cambiar el color del appbar en las 3 paginas.
      //color: Color.fromRGBO(96, 125, 139, 1),
      debugShowCheckedModeBanner: false,
      title: 'La Mezcladora',
      home: Scaffold(
        appBar: AppBar(
          
          title: Text('La Mezcladora'),
        ),        
        body: Column(
           children: <Widget> [
            Padding(padding: EdgeInsets.only(top:30),),
            Text('ELEMENTOS NECESARIO: ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Padding(padding: EdgeInsets.only(top:150),),
            Center(child:Text("Cemento: "+dictionario["cemento"].toString()+
                "\nArena Fina: "+dictionario["arena_fina"].toString()+
                "\nArena Gruesa: "+dictionario["arena_gruesa"].toString()+
                "\nAgua: "+dictionario["agua"].toString(),
                style: TextStyle(fontSize: 40),),
          
        )]),
          
        )        
      
    );
}
}

