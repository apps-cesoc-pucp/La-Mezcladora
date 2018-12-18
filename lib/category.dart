import 'package:flutter/material.dart';

final heigth=100.0;
final radius=BorderRadius.circular(heigth/2);

class Category extends StatelessWidget{
  final String name;
  final ColorSwatch color;
  final IconData icon;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.icon,
  }):assert(name!=null),
     assert(color!=null),
     assert(icon !=null),
     super(key:key);

  @override
  Widget build(BuildContext context){
    return Material(
        color:Colors.transparent,
        child:Container(
          height: heigth,
          child: InkWell(
            borderRadius: radius,
            highlightColor: color,
            splashColor: color,
            onTap: (){
              print('kill me please');
            },
            child:Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:[
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(
                      icon,
                      size:60.0,
                    )
                  ),
                  Center(
                    child: Text(
                      name,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline,
                    ),
                  ),
                ]
              )
            )
          )
        )
    );
  }
}