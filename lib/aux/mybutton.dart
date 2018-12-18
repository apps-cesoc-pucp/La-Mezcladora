import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
    final String name;
    final double width;
    final double height;

    const MyButton({
      Key key,
      @required this.name,
      @required this.height,
      @required this.width,
    }):assert(name!=null),
      assert(height!=null),
      assert(width!=null),    
      super(key:key);

   @override
   Widget build(BuildContext context){
     return ButtonTheme(
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(height/3)),
                 minWidth: width,
                 height: height,
                 child:RaisedButton(
                 
                 onPressed: ()=>print('SE PRESIONO '+name),
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