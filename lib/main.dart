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
      
        body: Row(
          children:
          [
            Expanded( 
              flex :1,
              child:Column(
                children:[
                  Expanded(child: Container( color:Colors.red),),
                  Expanded( flex:3, child:Container( color:Colors.green) ,),
                  Expanded(child:Container(color:Colors.lightGreen),)
                ],
              ),
            ),
            Expanded(
            flex :1,
            child:Column(
              children: [
                Expanded(child: Container( color:Colors.blue)),
                Expanded(child:Container(color:Colors.black)),
                Expanded(child:Container(color:Colors.deepOrange)),
                Expanded(child:Container(color:Colors.purple)),
              ],
            ),
          ),
          ],
        ),
),

);
}
}