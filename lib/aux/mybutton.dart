import 'package:flutter/material.dart';
import '../activities/pag2.dart';
import '../activities/pag3.dart';
import '../activities/pag4.dart';

class MyButton extends StatelessWidget{    
    
    final String name;
    final double width;
    final double height;
    final Widget pagina;

    const MyButton({
      Key key,
      @required this.pagina,
      @required this.name,
      @required this.height,
      @required this.width,
    }):assert(name!=null),
      assert(height!=null),
      assert(width!=null),
      //assert(onTap!=null),    
      super(key:key);

   @override
   Widget build(BuildContext context){
     return ButtonTheme(
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(height/3)),
                 minWidth: width,
                 height: height,
                 child:RaisedButton(
                 
                 onPressed: () =>
                              Navigator.push(
                              context,
                              new MaterialPageRoute(builder: (context) => pagina),
                              ),
                 color: Color.fromRGBO(255, 193, 7,1),
                 
                 child: Text(
                   name,
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 25,
                   ))
               ) 
              );
   }
}