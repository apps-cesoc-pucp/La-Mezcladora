import 'package:flutter/material.dart';
import 'pag3_v2.dart';
import '../aux/mybutton.dart';

class Pag3_v1 extends StatefulWidget {
  @override
  State createState() => new Pag3_v1State();
}

class Pag3_v1State extends State<Pag3_v1> { 
  bool overlayShouldBeVisible = false;
  @override
  void initState(){
    super.initState();
  }
  /*void handleAnswer(bool answer) {
    isCorrect = (currentQuestion.answer == answer);
    quiz.answer(isCorrect);
    this.setState(() {
      overlayShouldBeVisible = true;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column( 
          children: <Widget>[
            Padding(
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
              padding: EdgeInsets.only(left: 55,top:50),
              child: ButtonTheme(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100/3)),
                minWidth: 100,
                height: 80,

                child: RaisedButton(
                 onPressed: () => print('h'),
                 color: Color.fromRGBO(255, 193, 7,1),
                 
                 child: Text(
                   'LADRILLO PANDERETA',
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 25,
                    ),
                ),
                ),
            ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 55,top:270),
              child: MyButton(name:'LADRILLO KING KONG',width: 100,height: 80),
            ),            
            overlayShouldBeVisible==true ? new OverlayOn():new Container()]
          ),
        ),
          ],
            ),
          ],
    );
  }
}