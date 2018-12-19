import 'package:flutter/material.dart';
import 'pag3_v2.dart';
import '../aux/mybutton.dart';

class Pag3 extends StatefulWidget {
  
  // This widget is the root of your application.
  @override
  State createState() => new Pag3State();
}
class Pag3State extends State<Pag3>{
  bool overlayOn;
  @override
  void initState() {
    super.initState();
    overlayOn=false;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "La Mezcladora",
      home:Scaffold(
        appBar: AppBar(
          title: Text("La Mezcladora"),
        ), 
        body: Stack(
          //
          
          fit: StackFit.expand,
          children:<Widget>[
            Padding(
            padding: EdgeInsets.only(top:40),
            child:Column(          
            children: <Widget> [
            Padding(
              padding: EdgeInsets.only(top:20),
              child: Text(
                "MORTERO PARA:",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ),
           
            Padding(
              padding: EdgeInsets.only(top:50),
              child: ButtonTheme(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100/3)),
                minWidth: 100,
                height: 80,

                child: RaisedButton(
                 onPressed: () {overlayOn=true;print(overlayOn);},
                 color: Color.fromRGBO(255, 193, 7,1),
                 
                 child: Text(
                   "LADRILLO PANDERETA",
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 25,
                    ),
                ),
                ),
            ),
            ),
            Padding(
              padding: EdgeInsets.only(top:270),
              child: MyButton(name:"LADRILLO KING KONG",width: 100,height: 80),
            ),            
            
            ]),
        ),
        overlayOn==true ? new Container(
          color: Colors.black38,
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top:250),),
              MyButton(name: "SOGA",width: 150,height: 80),
              Padding(padding: EdgeInsets.only(top:20),),
              MyButton(name: "CANTO",width: 150,height: 80),
            ],
          )
        
        
        ):new Container(),
        ]
      )
      )
    ); 
  }
}



