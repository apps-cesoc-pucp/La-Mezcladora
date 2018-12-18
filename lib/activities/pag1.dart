import 'package:flutter/material.dart';
import '../aux/mybutton.dart';
class Pag1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical:20.0),            
              child: Text(
                'Bienvenido',              
                style: TextStyle(fontSize: 40.0),
                ),
              ),
              
            Container(
              padding: const EdgeInsets.only(top: 200.0),
              child: MyButton(name:'MAESTRO',width: 200,height: 100),
                ),
                
            Container(
              padding: const EdgeInsets.only(top: 100.0),
              child: MyButton(name:'INGENIERO',width: 200,height: 100),
               ),
               
          ]
          ),
          
        )        
      
    );
  }
}
