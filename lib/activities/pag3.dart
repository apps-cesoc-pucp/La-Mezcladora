import 'package:flutter/material.dart';
import '../aux/mybutton.dart';

class Pag3 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'La Mezcladora',
      home:Scaffold(
        appBar: AppBar(
          title: Text('La Mezcladora'),
        ), 
        body: Padding(
          padding: EdgeInsets.only(top:40),
          child:Column(          
            children: <Widget> [
            Padding(
              padding: EdgeInsets.only(left:70, top:20),
              child: Text(
                'MORTERO PARA:',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ),
            Padding(
              padding: EdgeInsets.only(left: 55,top:100),
              child: MyButton(name:'LADRILLO PANDERETA',width: 100,height: 100,),
            ),
            Padding(
              padding: EdgeInsets.only(left: 55,top:150),
              child: MyButton(name:'LADRILLO KING KONG',width: 100,height: 100),
            ),            
            ]
          ),
        ),
      )
    ); 
  }
}