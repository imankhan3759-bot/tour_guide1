import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp ({super.key});

@override
Widget build( BuildContext context){
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("BS IT"),
      ),
      
        body: Column(
          children:[
            Stack(
              children: [
                Container(
                  color: Colors.black,
                  width: double. infinity,
                  height: 150,
                ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Text('My Profile', style: TextStyle(
                  color: Colors.white,
                ),)
              )

              ],
  


      ),
      Row(children: [
        Expanded(child: Container(height:60, color:CupertinoColors.activeBlue),),
        Expanded( child:Container( height:60,color:Colors.deepOrange) ,),
      ],)
        ]
    ),
    ),
  );
}
}