import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
        backgroundColor:Colors.blue,
        title: Text('my app'),
        ),
        body:Row(
          children: [
            Container(
              margin:EdgeInsets.all(10),
              color:Colors.brown,
              height:100,
              width:100,
            ),
            Container(
              margin:EdgeInsets.all(10),
              color: Colors.black,
              height:100,
              width:100,
            ),
            Container( 
              margin:EdgeInsets.all(10),
              color:Colors.blueAccent,
              height:100,
              width:100,
            ),
        Container(
          margin:EdgeInsets.all(10),
          color:Colors.amber,
          height:100,
          width:100,
        ),
          ],
        )
      
    ));
}
}